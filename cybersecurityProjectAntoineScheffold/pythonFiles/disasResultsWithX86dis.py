from binascii import unhexlify, hexlify
import pipes
from subprocess import Popen, PIPE
import sys


fin = open(sys.argv[1], "r")
allLines = []
for line in fin:
    allLines.append(line)
fin.close()


#allRelevantLines = []
#for line in allLines:
 #   if line[0] == "0" and line[1] == "f" or line[2] == "0" and line[3] == "f":
  #      continue
   # else:
    #    allRelevantLines.append(line)




noPrefetch = []
i = 0
#allRelevantLines.sort()
for line in allLines:
    proc = Popen(["x86dis", "-e", "0", "-s", "intel"], stdout=PIPE, stdin=PIPE, stderr=PIPE).communicate(unhexlify(line[:-1]))
    print proc[0]
    print proc[1]
   # if "X86" in proc[1]:
    print (line)
      #  break
   # print i
    i += 1





