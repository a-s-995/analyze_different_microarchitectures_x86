#define _GNU_SOURCE

#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <zconf.h>
#include <sys/wait.h>
#include <memory.h>
#include <sys/mman.h>
#include <stdint.h>
#include <sys/ucontext.h>
#include <assert.h>

#define twohundredFiftyMB 268435456 //256mb
#define hundredTwentyMB 134217728 //128MB
#define fivehundredMB 536870912 //512MB
#define oneGB 1073741824 //1024MB
#define plusRbp 128
#define plusRsp 1024

#define trapflag 0x100
#define lenExecutable 30  //16 bytes instruction, appended with nops, maximum 14 bytes jump instruction to return from exectuable buffer
//register void* rrrsp asm("rsp"); //example code to access one register :-)

char testInstruction[15] =  {0xbe, 0x08, 0x00, 0x00, 0x00, 0xcc}; //0xcc is "int 3", 0x50 is push rax,   0x49, 0x89, 0xc6,

extern char resume;
char setTrapFlag[10] = {0x9c, 0x48, 0x81, 0x0c, 0x24, 0x00, 0x01, 0x00, 0x00, 0x9d}; //sets the trap flag

struct backup {
    uint64_t rax;
    uint64_t rcx;
    uint64_t rbx;
    uint64_t rdx;
    uint64_t rsi;
    uint64_t rdi;
    uint64_t rbp;
    uint64_t rsp;
    uint64_t r8;
    uint64_t r9;
    uint64_t r10;
    uint64_t r11;
    uint64_t r12;
    uint64_t r13;
    uint64_t r14;
    uint64_t r15;
    uint64_t eflags;
    uint64_t stackMinus8;
    uint64_t stackPlus8;
    uint64_t rbpData;
    char theInstruction[31]; //we will store the instruction in ascii :)
};

struct pointers {
    void* rax;
    void* rbx;
    void* rcx;
    void* rdx;
    void* rsi;
    void* rdi;
    void* r8;
    void* r9;
    void* r10;
    void* r11;
    void* r12;
    void* r13;
    void* r14;
    void* r15;
    void* rbp;
    void* rsp;
    void* dummyStack;
};

void* referenceStack;
struct pointers pointer;
struct backup back;
char *inputInstructions = NULL;
char* results = NULL;
int lengthResults;
long allPrintedBytes;
long pointerInstructions;
unsigned long readedBytes;
FILE *fout;
void *buffer;   //have to make the buffer global, to enfore rip relative addressing instead of rbp relative
size_t instructionLength;

void jumpassembly() {
    __asm__("\
			.global jump_start                    \n\
			jump_start:                           \n\
            nop \n\
            nop \n\
            nop \n\
            ljmp *resume \n\
            nop                                 \n\
            nop                                  \n\
			.global jump_end                      \n\
			jump_end:                             \n\
			"
    :
    :
    );
}
char * unhexlifyInC(char* str) {
    size_t len = strlen(str);
    char* retVal = calloc((len/2) +1, 1);
    int i;
    for (i = 0; i < len; i++) {
        char chr = str[i];
        back.theInstruction[i] = chr;
        if (chr >= '0' && chr <= '9') chr = (char) (chr - '0');
        else if (chr >= 'a' && chr <='f') chr = (char) (chr - 'a' + 10);
        else if (chr >= 'A' && chr <='F') chr = (char) (chr - 'A' + 10);
        if(i % 2 == 0) {
            retVal[i/2] = chr << 4;
        }
        else {
            retVal[i/2] += chr;
        }
    }
    free(str);
    back.theInstruction[i] = 0;
    return retVal;
}
void append(char* s, char c) {
    int len = (int) strlen(s);
    s[len] = c;
    s[len+1] = '\0';
}
char* getInstr () {
    char *currInst = NULL;
    currInst = calloc(31, 1);
    while(inputInstructions[pointerInstructions] != '\n') {
        append(currInst, inputInstructions[pointerInstructions]);
        pointerInstructions++;
    }
    instructionLength = strlen(currInst) / 2;
    pointerInstructions++;  // to jump over the '\n'
    int lengCurrInstrASCII = (int) strlen(currInst);
    currInst = unhexlifyInC(currInst);
    char* resultInstr = calloc(31, 1);
    int i = 0;
    for (i = 0; i<10; i++) {
        resultInstr[i] = setTrapFlag[i];
    }
    for (i = 10; i< (lengCurrInstrASCII/2) + 10; i++) {
        resultInstr[i] = currInst[i-10];
    }
    free(currInst);
    return resultInstr;
}





void checkSignal(int sig, char* buf) {
    switch (sig){
        case SIGILL: strcat(buf, ":\tSIGILL\t"); break;
        case SIGTRAP: strcat(buf, ":\tSIGTRAP\t"); break;
        case SIGSEGV: strcat(buf, ":\tSIGSEGV\t"); break;
        case SIGBUS: strcat(buf, ":\tSIGBUS\t"); break;
        case SIGFPE: strcat(buf, ":\tSIGFPE\t"); break;
        case SIGPIPE: strcat(buf, ":\tSIGPIPE\t"); break;
        default:
            printf("not defined signal");
            assert(0);
    }
}
void checkChanges(void* old, void* new, char* reg, char *buf) {
    if (old != new) {
        char tmp[64];
        sprintf(tmp, "%s, old:%p new:%p\t", reg, old, new);
        strcat(buf, tmp);
    }
}
void checkFlags(void* oold, void* nnew, char* buf){
    if(oold!=nnew) {
        char tmp[128];
        char ttmp[64];
        sprintf(tmp, "EFLAGS old %p new %p", oold, nnew);
        unsigned long old = (unsigned long) oold;
        unsigned long new = (unsigned long) nnew;
        unsigned long xored = old ^ new;
        if(xored % 2 == 1) {
            sprintf(ttmp, " CF");
            strcat(tmp, ttmp);
        }
        xored /= 4;
        if(xored % 2 == 1) {
            sprintf(ttmp, " PF");
            strcat(tmp, ttmp);
        }
        xored /= 4;
        if(xored % 2 == 1) {
            sprintf(ttmp, " AF");
            strcat(tmp, ttmp);
        }
        xored /= 4;
        if(xored % 2 == 1) {
            sprintf(ttmp, " ZF");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " SF");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " TF");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " IF");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " DF");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " OF");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " IOPL");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " IOPL");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " NT");
            strcat(tmp, ttmp);
        }
        xored /= 4;
        if(xored % 2 == 1) {
            sprintf(ttmp, " RF");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " VM");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " AC");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " VIF");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " VIP");
            strcat(tmp, ttmp);
        }
        xored /= 2;
        if(xored % 2 == 1) {
            sprintf(ttmp, " ID");
            strcat(tmp, ttmp);
        }
        strcat(tmp, "\t");
        strcat(buf, tmp);

    }
}
void checkPointed(char* point, char* string, char* buf) {
    char value[9]= {0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x00};
    if(memcmp(point, value, 8) != 0) {
        void* ttmp;
        memcpy(&ttmp, point, 8);
        char tmp [64];
        sprintf(tmp, "deref.: %s newValue:%p\t", string, ttmp);
       // printf("%s\n", tmp);
        strcat(buf,tmp);
    }
}
void checkStack(char* point, char* buf, void* pointerRSP, void* RRSP, void* oldFlags) {
    if (memcmp(point, referenceStack, 256) != 0) {
        strcat(buf,"dummyStack changed\t");
    }
    if(pointerRSP == RRSP + 8) {
        char value[9]= {0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x00};
        if(memcmp(RRSP, &oldFlags, 8) != 0) { //because the old flag register was pushed
            void* old;
            void* new;
            memcpy(&new,  RRSP, 8);
            char tmp [64];
            sprintf(tmp, "item pushed new %p\t", new);
            strcat(buf, tmp);
        }
    }
}
void checkRip (void* RRIP, char* buf) {
    void* shouldLengtInstr = buffer + 10 + instructionLength;
    if(RRIP != shouldLengtInstr) {
        unsigned long difference;
        char tmp [64];
        if (shouldLengtInstr > RRIP) {
            difference = shouldLengtInstr - RRIP;
            sprintf(tmp, "RIP %lu bytes shorter than expected\t", difference);
        }
        else {
            difference = RRIP - shouldLengtInstr;
            sprintf(tmp, "RIP %lu bytes longer than expected\t", difference);
        }
        strcat(buf, tmp);
    }
}







void handlerFunc(int sig, siginfo_t *info, void *ucontext) {
    back.eflags = back.eflags | 0x100; //correct, that i pushed the flags register on stack to set trap flag, hackish
    if(sig == SIGILL) {
        ucontext_t *user_ctx = (ucontext_t *)ucontext;
        user_ctx->uc_mcontext.gregs[REG_EFL] &= ~trapflag;
        user_ctx->uc_mcontext.gregs[REG_RIP] = (greg_t) &resume;
        return;
    }
    char buf[512] = {0};
    for (int blub = 0; blub < strlen(back.theInstruction); blub++) {
        buf[blub] = back.theInstruction[blub];
    }
    checkSignal(sig, buf);

    ucontext_t *user_ctx = (ucontext_t *)ucontext;
    void*  RRAX = (void*) user_ctx->uc_mcontext.gregs[REG_RAX];
    void*  RRBX = (void*) user_ctx->uc_mcontext.gregs[REG_RBX];
    void*  RRCX = (void*) user_ctx->uc_mcontext.gregs[REG_RCX];
    void*  RRDX = (void*) user_ctx->uc_mcontext.gregs[REG_RDX];
    void*  RRSI = (void*) user_ctx->uc_mcontext.gregs[REG_RSI];
    void*  RRDI = (void*) user_ctx->uc_mcontext.gregs[REG_RDI];
    void*  RR8 = (void*) user_ctx->uc_mcontext.gregs[REG_R8];
    void*  RR9 = (void*) user_ctx->uc_mcontext.gregs[REG_R9];
    void*  RR10 = (void*) user_ctx->uc_mcontext.gregs[REG_R10];
    void*  RR11 = (void*) user_ctx->uc_mcontext.gregs[REG_R11];
    void*  RR12 = (void*) user_ctx->uc_mcontext.gregs[REG_R12];
    void*  RR13 = (void*) user_ctx->uc_mcontext.gregs[REG_R13];
    void*  RR14 = (void*) user_ctx->uc_mcontext.gregs[REG_R14];
    void*  RR15 = (void*) user_ctx->uc_mcontext.gregs[REG_R15];
    void*  RRSP = (void*) user_ctx->uc_mcontext.gregs[REG_RSP];
    void*  RRBP = (void*) user_ctx->uc_mcontext.gregs[REG_RBP];
    void* FFLAGS = (void *) user_ctx->uc_mcontext.gregs[REG_EFL];
    void* RRIP = (void *) user_ctx->uc_mcontext.gregs[REG_RIP];

    checkChanges(pointer.rax, RRAX, "RAX", buf);
    checkChanges(pointer.rbx, RRBX, "RBX", buf);
    checkChanges(pointer.rcx, RRCX, "RCX", buf);
    checkChanges(pointer.rdx, RRDX, "RDX", buf);
    checkChanges(pointer.rsi, RRSI, "RSI", buf);
    checkChanges(pointer.rdi, RRDI, "RDI", buf);
    checkChanges(pointer.r8, RR8, "R8", buf);
    checkChanges(pointer.r9, RR9, "R9", buf);
    checkChanges(pointer.r10, RR10, "R10", buf);
    checkChanges(pointer.r11, RR11, "R11", buf);
    checkChanges(pointer.r12, RR12, "R12", buf);
    checkChanges(pointer.r13, RR13, "R13", buf);
    checkChanges(pointer.r14, RR14, "R14", buf);
    checkChanges(pointer.r15, RR15, "R15", buf);
    checkChanges(pointer.rbp, RRBP, "RBP", buf);
    checkChanges(pointer.rsp, RRSP, "RSP", buf);

    checkFlags((void *) back.eflags, FFLAGS, buf);

    checkPointed(pointer.rax, "RAX", buf);
    checkPointed(pointer.rbx, "RBX", buf);
    checkPointed(pointer.rcx, "RCX", buf);
    checkPointed(pointer.rdx, "RDX", buf);
    checkPointed(pointer.rsi, "RSI", buf);
    checkPointed(pointer.rdi, "RDI", buf);
    checkPointed(pointer.r8, "R8", buf);
    checkPointed(pointer.r9, "R9", buf);
    checkPointed(pointer.r10, "R10", buf);
    checkPointed(pointer.r11, "R11", buf);
    checkPointed(pointer.r12, "R12", buf);
    checkPointed(pointer.r13, "R13", buf);
    checkPointed(pointer.r14, "R14", buf);
    checkPointed(pointer.r15, "R15", buf);

    checkStack(pointer.dummyStack, buf, pointer.rsp, RRSP, (void *) back.eflags);
    checkRip(RRIP, buf);

    strcat(buf, "\n");
    strcat(results, buf);
    lengthResults += strlen(buf);
    if (lengthResults > 16000) {
        int printBytes = fprintf(fout, "%s", results);
        allPrintedBytes += printBytes;
      //  printf("%lu printed bytes so far \n", allPrintedBytes);
        free(results);
        results = NULL;
        results = calloc(sizeof(char) * hundredTwentyMB, 1);
        results[1] = 0;
        lengthResults = 0;
    }
    user_ctx->uc_mcontext.gregs[REG_EFL] &= ~trapflag;
    user_ctx->uc_mcontext.gregs[REG_RIP] = (greg_t) &resume;
}







int main(int argc, char* argv[]) {
    if (argc < 2) {
        puts("please specify a input file \n");
        puts("the input file should have the specified format, and maximum 512MB size\n");
        puts("the output will be in outputfile.txt \n");
        return -1;
    }
    struct sigaction s;
    s.sa_sigaction = handlerFunc;
    s.sa_flags = SA_SIGINFO | SA_ONSTACK;
    sigfillset(&s.sa_mask);
    sigaction(SIGILL, &s, NULL);
    sigaction(SIGSEGV, &s, NULL);
    sigaction(SIGFPE, &s, NULL);
    sigaction(SIGBUS, &s, NULL);
    sigaction(SIGTRAP, &s, NULL);

    inputInstructions = calloc(sizeof(char) * fivehundredMB, 1);
    results = calloc(sizeof(char) * hundredTwentyMB, 1);
    lengthResults = 0;
    allPrintedBytes = 0;
    FILE *fin = fopen(argv[1], "r");
    if (fin == NULL) {
        perror("error opening File fin\n");
        return 0;
    }
    fout = fopen("outputfile.txt", "w");
    if (fout == NULL) {
        perror("error opening File fout\n");
        return 0;
    }
    readedBytes = fread(inputInstructions, sizeof(char), fivehundredMB, fin);
    char value[8]= {0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55};
    int instructionsCounter = 0;

    buffer = mmap(0, lenExecutable, PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

    pointer.rax = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.rbx = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.rcx = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.rdx = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.rsi = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.rdi = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.r8 = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.r9 = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.r10 = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.r11 = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.r12 = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.r13 = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.r14 = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.r15 = mmap(0, 8,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.dummyStack = mmap(0, 4096,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    pointer.dummyStack += 1024;     //when i immedially set     rsp = dummystack         , it does not work
    pointer.rbp = pointer.dummyStack + plusRbp;
    pointer.rsp = pointer.dummyStack ;

    referenceStack = mmap(0, 4096,  PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE |MAP_ANONYMOUS, -1, 0);
    for (int i = 0; i < 4096; i+=8) {
        memcpy(referenceStack+i, value, 8);
    }

    while (1) {
        if (instructionsCounter % 30000 == 0) printf("proceeded bytes: %lu \t instructionsCounter: %d \n",
                                                     pointerInstructions, instructionsCounter);
        if (readedBytes <= pointerInstructions) {
            break;
        }
        instructionsCounter++;

        char *code = getInstr();
        memcpy(buffer, code, lenExecutable);
        free(code);

        memcpy(pointer.rax, value, 8);
        memcpy(pointer.rbx, value, 8);
        memcpy(pointer.rcx, value, 8);
        memcpy(pointer.rdx, value, 8);
        memcpy(pointer.rsi, value, 8);
        memcpy(pointer.rdi, value, 8);
        memcpy(pointer.r8, value, 8);
        memcpy(pointer.r9, value, 8);
        memcpy(pointer.r10, value, 8);
        memcpy(pointer.r11, value, 8);
        memcpy(pointer.r12, value, 8);
        memcpy(pointer.r13, value, 8);
        memcpy(pointer.r14, value, 8);
        memcpy(pointer.r15, value, 8);

        memcpy(pointer.dummyStack, referenceStack, 256);


        /*   BACKUP     BEGIN */
        __asm__  ("movq %%rax, %[RAX]\n "   //these instructions load the registers in the backup struct (backup them)
                  "movq %%rbx, %[RBX]\n "
                  "movq %%rcx, %[RCX]\n "
                  "movq %%rdx, %[RDX]\n "
                  "movq %%rsi, %[RSI]\n "
                  "movq %%rdi, %[RDI]\n "
                  "movq %%r8, %[R8]\n "
                  "movq %%r9, %[R9]\n "
                  "movq %%r10, %[R10]\n "
                  "movq %%r11, %[R11]\n "
                  "movq %%r12, %[R12]\n "
                  "movq %%r13, %[R13]\n "
                  "movq %%r14, %[R14]\n "
                  "movq %%r15, %[R15]\n "
                  "PUSHFQ \n "//POPFQ             //these instructions load the stack and the flagregister in backup struct
                  "movq (%%rsp), %%rax \n"
                  "movq %%rax, %[FLAGS] \n"
                  "movq %%rbp, %[RBP]\n"
                  "movq %%rsp, %[RSP]\n"
        :
        [RAX] "=m"(back.rax),            //these instructions load the registers in the backup struct
        [RBX] "=m"(back.rbx),
        [RCX] "=m"(back.rcx),
        [RDX] "=m"(back.rdx),
        [RSI] "=m"(back.rsi),
        [RDI] "=m"(back.rdi),
        [R8] "=m"(back.r8),
        [R9] "=m"(back.r9),
        [R10] "=m"(back.r10),
        [R11] "=m"(back.r11),
        [R12] "=m"(back.r12),
        [R13] "=m"(back.r13),
        [R14] "=m"(back.r14),
        [R15] "=m"(back.r15),
        [FLAGS] "=m"(back.eflags),            //these instructions load the stack and the flagregister in backup struct
        [RBP] "=m"(back.rbp),
        [RSP] "=m"(back.rsp)
        :
        );
        /*      BACKUP          END    */

        __asm__  ("movq %[RAX], %%rax\n "
                  "movq %[RBX], %%rbx\n "
                  "movq %[RCX], %%rcx\n "
                  "movq %[RDX], %%rdx\n "
                  "movq %[RSI], %%rsi\n "
                  "movq %[RDI], %%rdi\n "
                  "movq %[R8], %%r8 \n "
                  "movq %[R9], %%r9 \n "
                  "movq %[R10], %%r10 \n "
                  "movq %[R11], %%r11 \n "
                  "movq %[R12], %%r12 \n "
                  "movq %[R13], %%r13 \n "
                  "movq %[R14], %%r14 \n "
                  "movq %[R15], %%r15 \n "
                  "movq %[RBP], %%rbp \n"
                  "movq %[RSP], %%rsp \n"
                  "jmp *%[BUFFER] \n"
                  "nop\n"
                  "nop\n"
                  "nop\n"
                  "nop"
        :
        :
        [RAX] "m"(pointer.rax),
        [RBX] "m"(pointer.rbx),
        [RCX] "m"(pointer.rcx),
        [RDX] "m"(pointer.rdx),
        [RSI] "m"(pointer.rsi),
        [RDI] "m"(pointer.rdi),
        [R8] "m"(pointer.r8),
        [R9] "m"(pointer.r9),
        [R10] "m"(pointer.r10),
        [R11] "m"(pointer.r11),
        [R12] "m"(pointer.r12),
        [R13] "m"(pointer.r13),
        [R14] "m"(pointer.r14),
        [R15] "m"(pointer.r15),
        [RBP] "m"(pointer.rbp),
        [RSP] "m"(pointer.rsp),
        [BUFFER] "m"(buffer)
        );






        /*       FROM HERE; I RETURN AFTER SIG HANDLER */
        __asm__ __volatile__ ("\
			.global resume   \n\
			resume:          \n\
            "  );
        __asm__  (
                  "movq %[RAX], %%rax\n "
                  "movq %[RBX], %%rbx\n "
                  "movq %[RCX], %%rcx\n "
                  "movq %[RDX], %%rdx\n "
                  "movq %[RSI], %%rsi\n "
                  "movq %[RDI], %%rdi\n "
                  "movq %[R8], %%r8 \n "
                  "movq %[R9], %%r9 \n "
                  "movq %[R10], %%r10 \n "
                  "movq %[R11], %%r11 \n "
                  "movq %[R12], %%r12 \n "
                  "movq %[R13], %%r13 \n "
                  "movq %[R14], %%r14 \n "
                  "movq %[R15], %%r15 \n "
                  "movq %[RBP], %%rbp \n"
                  "movq %[RSP], %%rsp \n"
                  "POPFQ \n"        //the old value has still to be on the real stack, else something is broken
        :
        :
        [RAX] "m"(back.rax),
        [RBX] "m"(back.rbx),
        [RCX] "m"(back.rcx),
        [RDX] "m"(back.rdx),
        [RSI] "m"(back.rsi),
        [RDI] "m"(back.rdi),
        [R8] "m"(back.r8),
        [R9] "m"(back.r9),
        [R10] "m"(back.r10),
        [R11] "m"(back.r11),
        [R12] "m"(back.r12),
        [R13] "m"(back.r13),
        [R14] "m"(back.r14),
        [R15] "m"(back.r15),
        [RBP] "m"(back.rbp),
        [RSP] "m"(back.rsp)
        );
    }
    int printBytes = fprintf(fout, "%s", results);
    allPrintedBytes += printBytes;
    printf("saved %lu bytes so far\n", allPrintedBytes);
   // printf("the resulting string: \n%s", results);
    return 0;
}
