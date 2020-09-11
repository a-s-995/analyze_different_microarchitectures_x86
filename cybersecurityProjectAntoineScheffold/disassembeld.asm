
cybersecurityProject:     file format elf64-x86-64


Disassembly of section .init:

00000000004007d0 <_init>:
  4007d0:	48 83 ec 08          	sub    rsp,0x8
  4007d4:	48 8b 05 1d 38 20 00 	mov    rax,QWORD PTR [rip+0x20381d]        # 603ff8 <__gmon_start__>
  4007db:	48 85 c0             	test   rax,rax
  4007de:	74 05                	je     4007e5 <_init+0x15>
  4007e0:	e8 4b 01 00 00       	call   400930 <__gmon_start__@plt>
  4007e5:	48 83 c4 08          	add    rsp,0x8
  4007e9:	c3                   	ret    

Disassembly of section .plt:

00000000004007f0 <.plt>:
  4007f0:	ff 35 12 38 20 00    	push   QWORD PTR [rip+0x203812]        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4007f6:	ff 25 14 38 20 00    	jmp    QWORD PTR [rip+0x203814]        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4007fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400800 <free@plt>:
  400800:	ff 25 12 38 20 00    	jmp    QWORD PTR [rip+0x203812]        # 604018 <free@GLIBC_2.2.5>
  400806:	68 00 00 00 00       	push   0x0
  40080b:	e9 e0 ff ff ff       	jmp    4007f0 <.plt>

0000000000400810 <puts@plt>:
  400810:	ff 25 0a 38 20 00    	jmp    QWORD PTR [rip+0x20380a]        # 604020 <puts@GLIBC_2.2.5>
  400816:	68 01 00 00 00       	push   0x1
  40081b:	e9 d0 ff ff ff       	jmp    4007f0 <.plt>

0000000000400820 <sigaction@plt>:
  400820:	ff 25 02 38 20 00    	jmp    QWORD PTR [rip+0x203802]        # 604028 <sigaction@GLIBC_2.2.5>
  400826:	68 02 00 00 00       	push   0x2
  40082b:	e9 c0 ff ff ff       	jmp    4007f0 <.plt>

0000000000400830 <fread@plt>:
  400830:	ff 25 fa 37 20 00    	jmp    QWORD PTR [rip+0x2037fa]        # 604030 <fread@GLIBC_2.2.5>
  400836:	68 03 00 00 00       	push   0x3
  40083b:	e9 b0 ff ff ff       	jmp    4007f0 <.plt>

0000000000400840 <strlen@plt>:
  400840:	ff 25 f2 37 20 00    	jmp    QWORD PTR [rip+0x2037f2]        # 604038 <strlen@GLIBC_2.2.5>
  400846:	68 04 00 00 00       	push   0x4
  40084b:	e9 a0 ff ff ff       	jmp    4007f0 <.plt>

0000000000400850 <__stack_chk_fail@plt>:
  400850:	ff 25 ea 37 20 00    	jmp    QWORD PTR [rip+0x2037ea]        # 604040 <__stack_chk_fail@GLIBC_2.4>
  400856:	68 05 00 00 00       	push   0x5
  40085b:	e9 90 ff ff ff       	jmp    4007f0 <.plt>

0000000000400860 <mmap@plt>:
  400860:	ff 25 e2 37 20 00    	jmp    QWORD PTR [rip+0x2037e2]        # 604048 <mmap@GLIBC_2.2.5>
  400866:	68 06 00 00 00       	push   0x6
  40086b:	e9 80 ff ff ff       	jmp    4007f0 <.plt>

0000000000400870 <printf@plt>:
  400870:	ff 25 da 37 20 00    	jmp    QWORD PTR [rip+0x2037da]        # 604050 <printf@GLIBC_2.2.5>
  400876:	68 07 00 00 00       	push   0x7
  40087b:	e9 70 ff ff ff       	jmp    4007f0 <.plt>

0000000000400880 <__assert_fail@plt>:
  400880:	ff 25 d2 37 20 00    	jmp    QWORD PTR [rip+0x2037d2]        # 604058 <__assert_fail@GLIBC_2.2.5>
  400886:	68 08 00 00 00       	push   0x8
  40088b:	e9 60 ff ff ff       	jmp    4007f0 <.plt>

0000000000400890 <__libc_start_main@plt>:
  400890:	ff 25 ca 37 20 00    	jmp    QWORD PTR [rip+0x2037ca]        # 604060 <__libc_start_main@GLIBC_2.2.5>
  400896:	68 09 00 00 00       	push   0x9
  40089b:	e9 50 ff ff ff       	jmp    4007f0 <.plt>

00000000004008a0 <memcmp@plt>:
  4008a0:	ff 25 c2 37 20 00    	jmp    QWORD PTR [rip+0x2037c2]        # 604068 <memcmp@GLIBC_2.2.5>
  4008a6:	68 0a 00 00 00       	push   0xa
  4008ab:	e9 40 ff ff ff       	jmp    4007f0 <.plt>

00000000004008b0 <calloc@plt>:
  4008b0:	ff 25 ba 37 20 00    	jmp    QWORD PTR [rip+0x2037ba]        # 604070 <calloc@GLIBC_2.2.5>
  4008b6:	68 0b 00 00 00       	push   0xb
  4008bb:	e9 30 ff ff ff       	jmp    4007f0 <.plt>

00000000004008c0 <fprintf@plt>:
  4008c0:	ff 25 b2 37 20 00    	jmp    QWORD PTR [rip+0x2037b2]        # 604078 <fprintf@GLIBC_2.2.5>
  4008c6:	68 0c 00 00 00       	push   0xc
  4008cb:	e9 20 ff ff ff       	jmp    4007f0 <.plt>

00000000004008d0 <sigfillset@plt>:
  4008d0:	ff 25 aa 37 20 00    	jmp    QWORD PTR [rip+0x2037aa]        # 604080 <sigfillset@GLIBC_2.2.5>
  4008d6:	68 0d 00 00 00       	push   0xd
  4008db:	e9 10 ff ff ff       	jmp    4007f0 <.plt>

00000000004008e0 <memcpy@plt>:
  4008e0:	ff 25 a2 37 20 00    	jmp    QWORD PTR [rip+0x2037a2]        # 604088 <memcpy@GLIBC_2.14>
  4008e6:	68 0e 00 00 00       	push   0xe
  4008eb:	e9 00 ff ff ff       	jmp    4007f0 <.plt>

00000000004008f0 <fopen@plt>:
  4008f0:	ff 25 9a 37 20 00    	jmp    QWORD PTR [rip+0x20379a]        # 604090 <fopen@GLIBC_2.2.5>
  4008f6:	68 0f 00 00 00       	push   0xf
  4008fb:	e9 f0 fe ff ff       	jmp    4007f0 <.plt>

0000000000400900 <perror@plt>:
  400900:	ff 25 92 37 20 00    	jmp    QWORD PTR [rip+0x203792]        # 604098 <perror@GLIBC_2.2.5>
  400906:	68 10 00 00 00       	push   0x10
  40090b:	e9 e0 fe ff ff       	jmp    4007f0 <.plt>

0000000000400910 <strcat@plt>:
  400910:	ff 25 8a 37 20 00    	jmp    QWORD PTR [rip+0x20378a]        # 6040a0 <strcat@GLIBC_2.2.5>
  400916:	68 11 00 00 00       	push   0x11
  40091b:	e9 d0 fe ff ff       	jmp    4007f0 <.plt>

0000000000400920 <sprintf@plt>:
  400920:	ff 25 82 37 20 00    	jmp    QWORD PTR [rip+0x203782]        # 6040a8 <sprintf@GLIBC_2.2.5>
  400926:	68 12 00 00 00       	push   0x12
  40092b:	e9 c0 fe ff ff       	jmp    4007f0 <.plt>

Disassembly of section .plt.got:

0000000000400930 <__gmon_start__@plt>:
  400930:	ff 25 c2 36 20 00    	jmp    QWORD PTR [rip+0x2036c2]        # 603ff8 <__gmon_start__>
  400936:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000400940 <_start>:
  400940:	31 ed                	xor    ebp,ebp
  400942:	49 89 d1             	mov    r9,rdx
  400945:	5e                   	pop    rsi
  400946:	48 89 e2             	mov    rdx,rsp
  400949:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40094d:	50                   	push   rax
  40094e:	54                   	push   rsp
  40094f:	49 c7 c0 90 29 40 00 	mov    r8,0x402990
  400956:	48 c7 c1 20 29 40 00 	mov    rcx,0x402920
  40095d:	48 c7 c7 52 20 40 00 	mov    rdi,0x402052
  400964:	e8 27 ff ff ff       	call   400890 <__libc_start_main@plt>
  400969:	f4                   	hlt    
  40096a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400970 <deregister_tm_clones>:
  400970:	b8 e7 40 60 00       	mov    eax,0x6040e7
  400975:	55                   	push   rbp
  400976:	48 2d e0 40 60 00    	sub    rax,0x6040e0
  40097c:	48 83 f8 0e          	cmp    rax,0xe
  400980:	48 89 e5             	mov    rbp,rsp
  400983:	76 1b                	jbe    4009a0 <deregister_tm_clones+0x30>
  400985:	b8 00 00 00 00       	mov    eax,0x0
  40098a:	48 85 c0             	test   rax,rax
  40098d:	74 11                	je     4009a0 <deregister_tm_clones+0x30>
  40098f:	5d                   	pop    rbp
  400990:	bf e0 40 60 00       	mov    edi,0x6040e0
  400995:	ff e0                	jmp    rax
  400997:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40099e:	00 00 
  4009a0:	5d                   	pop    rbp
  4009a1:	c3                   	ret    
  4009a2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4009a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4009ad:	00 00 00 

00000000004009b0 <register_tm_clones>:
  4009b0:	be e0 40 60 00       	mov    esi,0x6040e0
  4009b5:	55                   	push   rbp
  4009b6:	48 81 ee e0 40 60 00 	sub    rsi,0x6040e0
  4009bd:	48 c1 fe 03          	sar    rsi,0x3
  4009c1:	48 89 e5             	mov    rbp,rsp
  4009c4:	48 89 f0             	mov    rax,rsi
  4009c7:	48 c1 e8 3f          	shr    rax,0x3f
  4009cb:	48 01 c6             	add    rsi,rax
  4009ce:	48 d1 fe             	sar    rsi,1
  4009d1:	74 15                	je     4009e8 <register_tm_clones+0x38>
  4009d3:	b8 00 00 00 00       	mov    eax,0x0
  4009d8:	48 85 c0             	test   rax,rax
  4009db:	74 0b                	je     4009e8 <register_tm_clones+0x38>
  4009dd:	5d                   	pop    rbp
  4009de:	bf e0 40 60 00       	mov    edi,0x6040e0
  4009e3:	ff e0                	jmp    rax
  4009e5:	0f 1f 00             	nop    DWORD PTR [rax]
  4009e8:	5d                   	pop    rbp
  4009e9:	c3                   	ret    
  4009ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004009f0 <__do_global_dtors_aux>:
  4009f0:	80 3d e9 36 20 00 00 	cmp    BYTE PTR [rip+0x2036e9],0x0        # 6040e0 <__TMC_END__>
  4009f7:	75 11                	jne    400a0a <__do_global_dtors_aux+0x1a>
  4009f9:	55                   	push   rbp
  4009fa:	48 89 e5             	mov    rbp,rsp
  4009fd:	e8 6e ff ff ff       	call   400970 <deregister_tm_clones>
  400a02:	5d                   	pop    rbp
  400a03:	c6 05 d6 36 20 00 01 	mov    BYTE PTR [rip+0x2036d6],0x1        # 6040e0 <__TMC_END__>
  400a0a:	f3 c3                	repz ret 
  400a0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400a10 <frame_dummy>:
  400a10:	bf 20 3e 60 00       	mov    edi,0x603e20
  400a15:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
  400a19:	75 05                	jne    400a20 <frame_dummy+0x10>
  400a1b:	eb 93                	jmp    4009b0 <register_tm_clones>
  400a1d:	0f 1f 00             	nop    DWORD PTR [rax]
  400a20:	b8 00 00 00 00       	mov    eax,0x0
  400a25:	48 85 c0             	test   rax,rax
  400a28:	74 f1                	je     400a1b <frame_dummy+0xb>
  400a2a:	55                   	push   rbp
  400a2b:	48 89 e5             	mov    rbp,rsp
  400a2e:	ff d0                	call   rax
  400a30:	5d                   	pop    rbp
  400a31:	e9 7a ff ff ff       	jmp    4009b0 <register_tm_clones>

0000000000400a36 <jumpassembly>:
  400a36:	55                   	push   rbp
  400a37:	48 89 e5             	mov    rbp,rsp

0000000000400a3a <jump_start>:
  400a3a:	90                   	nop
  400a3b:	90                   	nop
  400a3c:	90                   	nop
  400a3d:	ff 2c 25 2b 28 40 00 	jmp    FWORD PTR ds:0x40282b
  400a44:	90                   	nop
  400a45:	90                   	nop

0000000000400a46 <jump_end>:
  400a46:	90                   	nop
  400a47:	5d                   	pop    rbp
  400a48:	c3                   	ret    

0000000000400a49 <unhexlifyInC>:
  400a49:	55                   	push   rbp
  400a4a:	48 89 e5             	mov    rbp,rsp
  400a4d:	48 83 ec 30          	sub    rsp,0x30
  400a51:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  400a55:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400a59:	48 89 c7             	mov    rdi,rax
  400a5c:	e8 df fd ff ff       	call   400840 <strlen@plt>
  400a61:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  400a65:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a69:	48 d1 e8             	shr    rax,1
  400a6c:	48 83 c0 01          	add    rax,0x1
  400a70:	be 01 00 00 00       	mov    esi,0x1
  400a75:	48 89 c7             	mov    rdi,rax
  400a78:	e8 33 fe ff ff       	call   4008b0 <calloc@plt>
  400a7d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400a81:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  400a88:	e9 c6 00 00 00       	jmp    400b53 <unhexlifyInC+0x10a>
  400a8d:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400a90:	48 63 d0             	movsxd rdx,eax
  400a93:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400a97:	48 01 d0             	add    rax,rdx
  400a9a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400a9d:	88 45 eb             	mov    BYTE PTR [rbp-0x15],al
  400aa0:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400aa3:	48 98                	cdqe   
  400aa5:	0f b6 55 eb          	movzx  edx,BYTE PTR [rbp-0x15]
  400aa9:	88 90 a0 41 60 00    	mov    BYTE PTR [rax+0x6041a0],dl
  400aaf:	80 7d eb 2f          	cmp    BYTE PTR [rbp-0x15],0x2f
  400ab3:	7e 12                	jle    400ac7 <unhexlifyInC+0x7e>
  400ab5:	80 7d eb 39          	cmp    BYTE PTR [rbp-0x15],0x39
  400ab9:	7f 0c                	jg     400ac7 <unhexlifyInC+0x7e>
  400abb:	0f b6 45 eb          	movzx  eax,BYTE PTR [rbp-0x15]
  400abf:	83 e8 30             	sub    eax,0x30
  400ac2:	88 45 eb             	mov    BYTE PTR [rbp-0x15],al
  400ac5:	eb 2e                	jmp    400af5 <unhexlifyInC+0xac>
  400ac7:	80 7d eb 60          	cmp    BYTE PTR [rbp-0x15],0x60
  400acb:	7e 12                	jle    400adf <unhexlifyInC+0x96>
  400acd:	80 7d eb 66          	cmp    BYTE PTR [rbp-0x15],0x66
  400ad1:	7f 0c                	jg     400adf <unhexlifyInC+0x96>
  400ad3:	0f b6 45 eb          	movzx  eax,BYTE PTR [rbp-0x15]
  400ad7:	83 e8 57             	sub    eax,0x57
  400ada:	88 45 eb             	mov    BYTE PTR [rbp-0x15],al
  400add:	eb 16                	jmp    400af5 <unhexlifyInC+0xac>
  400adf:	80 7d eb 40          	cmp    BYTE PTR [rbp-0x15],0x40
  400ae3:	7e 10                	jle    400af5 <unhexlifyInC+0xac>
  400ae5:	80 7d eb 46          	cmp    BYTE PTR [rbp-0x15],0x46
  400ae9:	7f 0a                	jg     400af5 <unhexlifyInC+0xac>
  400aeb:	0f b6 45 eb          	movzx  eax,BYTE PTR [rbp-0x15]
  400aef:	83 e8 37             	sub    eax,0x37
  400af2:	88 45 eb             	mov    BYTE PTR [rbp-0x15],al
  400af5:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400af8:	83 e0 01             	and    eax,0x1
  400afb:	85 c0                	test   eax,eax
  400afd:	75 21                	jne    400b20 <unhexlifyInC+0xd7>
  400aff:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400b02:	89 c2                	mov    edx,eax
  400b04:	c1 ea 1f             	shr    edx,0x1f
  400b07:	01 d0                	add    eax,edx
  400b09:	d1 f8                	sar    eax,1
  400b0b:	48 63 d0             	movsxd rdx,eax
  400b0e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400b12:	48 01 d0             	add    rax,rdx
  400b15:	0f be 55 eb          	movsx  edx,BYTE PTR [rbp-0x15]
  400b19:	c1 e2 04             	shl    edx,0x4
  400b1c:	88 10                	mov    BYTE PTR [rax],dl
  400b1e:	eb 2f                	jmp    400b4f <unhexlifyInC+0x106>
  400b20:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400b23:	89 c2                	mov    edx,eax
  400b25:	c1 ea 1f             	shr    edx,0x1f
  400b28:	01 d0                	add    eax,edx
  400b2a:	d1 f8                	sar    eax,1
  400b2c:	89 c2                	mov    edx,eax
  400b2e:	48 63 ca             	movsxd rcx,edx
  400b31:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400b35:	48 01 c8             	add    rax,rcx
  400b38:	48 63 ca             	movsxd rcx,edx
  400b3b:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  400b3f:	48 01 ca             	add    rdx,rcx
  400b42:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
  400b45:	89 d1                	mov    ecx,edx
  400b47:	0f b6 55 eb          	movzx  edx,BYTE PTR [rbp-0x15]
  400b4b:	01 ca                	add    edx,ecx
  400b4d:	88 10                	mov    BYTE PTR [rax],dl
  400b4f:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
  400b53:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400b56:	48 98                	cdqe   
  400b58:	48 3b 45 f0          	cmp    rax,QWORD PTR [rbp-0x10]
  400b5c:	0f 82 2b ff ff ff    	jb     400a8d <unhexlifyInC+0x44>
  400b62:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400b66:	48 89 c7             	mov    rdi,rax
  400b69:	e8 92 fc ff ff       	call   400800 <free@plt>
  400b6e:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400b71:	48 98                	cdqe   
  400b73:	c6 80 a0 41 60 00 00 	mov    BYTE PTR [rax+0x6041a0],0x0
  400b7a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400b7e:	c9                   	leave  
  400b7f:	c3                   	ret    

0000000000400b80 <append>:
  400b80:	55                   	push   rbp
  400b81:	48 89 e5             	mov    rbp,rsp
  400b84:	48 83 ec 20          	sub    rsp,0x20
  400b88:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400b8c:	89 f0                	mov    eax,esi
  400b8e:	88 45 e4             	mov    BYTE PTR [rbp-0x1c],al
  400b91:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400b95:	48 89 c7             	mov    rdi,rax
  400b98:	e8 a3 fc ff ff       	call   400840 <strlen@plt>
  400b9d:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  400ba0:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400ba3:	48 63 d0             	movsxd rdx,eax
  400ba6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400baa:	48 01 c2             	add    rdx,rax
  400bad:	0f b6 45 e4          	movzx  eax,BYTE PTR [rbp-0x1c]
  400bb1:	88 02                	mov    BYTE PTR [rdx],al
  400bb3:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400bb6:	48 98                	cdqe   
  400bb8:	48 8d 50 01          	lea    rdx,[rax+0x1]
  400bbc:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400bc0:	48 01 d0             	add    rax,rdx
  400bc3:	c6 00 00             	mov    BYTE PTR [rax],0x0
  400bc6:	90                   	nop
  400bc7:	c9                   	leave  
  400bc8:	c3                   	ret    

0000000000400bc9 <getInstr>:
  400bc9:	55                   	push   rbp
  400bca:	48 89 e5             	mov    rbp,rsp
  400bcd:	48 83 ec 20          	sub    rsp,0x20
  400bd1:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  400bd8:	00 
  400bd9:	be 01 00 00 00       	mov    esi,0x1
  400bde:	bf 1f 00 00 00       	mov    edi,0x1f
  400be3:	e8 c8 fc ff ff       	call   4008b0 <calloc@plt>
  400be8:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  400bec:	eb 37                	jmp    400c25 <getInstr+0x5c>
  400bee:	48 8b 05 f3 34 20 00 	mov    rax,QWORD PTR [rip+0x2034f3]        # 6040e8 <inputInstructions>
  400bf5:	48 8b 15 ec 35 20 00 	mov    rdx,QWORD PTR [rip+0x2035ec]        # 6041e8 <pointerInstructions>
  400bfc:	48 01 d0             	add    rax,rdx
  400bff:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400c02:	0f be d0             	movsx  edx,al
  400c05:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400c09:	89 d6                	mov    esi,edx
  400c0b:	48 89 c7             	mov    rdi,rax
  400c0e:	e8 6d ff ff ff       	call   400b80 <append>
  400c13:	48 8b 05 ce 35 20 00 	mov    rax,QWORD PTR [rip+0x2035ce]        # 6041e8 <pointerInstructions>
  400c1a:	48 83 c0 01          	add    rax,0x1
  400c1e:	48 89 05 c3 35 20 00 	mov    QWORD PTR [rip+0x2035c3],rax        # 6041e8 <pointerInstructions>
  400c25:	48 8b 05 bc 34 20 00 	mov    rax,QWORD PTR [rip+0x2034bc]        # 6040e8 <inputInstructions>
  400c2c:	48 8b 15 b5 35 20 00 	mov    rdx,QWORD PTR [rip+0x2035b5]        # 6041e8 <pointerInstructions>
  400c33:	48 01 d0             	add    rax,rdx
  400c36:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400c39:	3c 0a                	cmp    al,0xa
  400c3b:	75 b1                	jne    400bee <getInstr+0x25>
  400c3d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400c41:	48 89 c7             	mov    rdi,rax
  400c44:	e8 f7 fb ff ff       	call   400840 <strlen@plt>
  400c49:	48 d1 e8             	shr    rax,1
  400c4c:	48 89 05 3d 36 20 00 	mov    QWORD PTR [rip+0x20363d],rax        # 604290 <instructionLength>
  400c53:	48 8b 05 8e 35 20 00 	mov    rax,QWORD PTR [rip+0x20358e]        # 6041e8 <pointerInstructions>
  400c5a:	48 83 c0 01          	add    rax,0x1
  400c5e:	48 89 05 83 35 20 00 	mov    QWORD PTR [rip+0x203583],rax        # 6041e8 <pointerInstructions>
  400c65:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400c69:	48 89 c7             	mov    rdi,rax
  400c6c:	e8 cf fb ff ff       	call   400840 <strlen@plt>
  400c71:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  400c74:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400c78:	48 89 c7             	mov    rdi,rax
  400c7b:	e8 c9 fd ff ff       	call   400a49 <unhexlifyInC>
  400c80:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  400c84:	be 01 00 00 00       	mov    esi,0x1
  400c89:	bf 1f 00 00 00       	mov    edi,0x1f
  400c8e:	e8 1d fc ff ff       	call   4008b0 <calloc@plt>
  400c93:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400c97:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
  400c9e:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
  400ca5:	eb 1f                	jmp    400cc6 <getInstr+0xfd>
  400ca7:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  400caa:	48 63 d0             	movsxd rdx,eax
  400cad:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400cb1:	48 01 c2             	add    rdx,rax
  400cb4:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  400cb7:	48 98                	cdqe   
  400cb9:	0f b6 80 d0 40 60 00 	movzx  eax,BYTE PTR [rax+0x6040d0]
  400cc0:	88 02                	mov    BYTE PTR [rdx],al
  400cc2:	83 45 e8 01          	add    DWORD PTR [rbp-0x18],0x1
  400cc6:	83 7d e8 09          	cmp    DWORD PTR [rbp-0x18],0x9
  400cca:	7e db                	jle    400ca7 <getInstr+0xde>
  400ccc:	c7 45 e8 0a 00 00 00 	mov    DWORD PTR [rbp-0x18],0xa
  400cd3:	eb 26                	jmp    400cfb <getInstr+0x132>
  400cd5:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  400cd8:	48 63 d0             	movsxd rdx,eax
  400cdb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400cdf:	48 01 c2             	add    rdx,rax
  400ce2:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  400ce5:	48 98                	cdqe   
  400ce7:	48 8d 48 f6          	lea    rcx,[rax-0xa]
  400ceb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400cef:	48 01 c8             	add    rax,rcx
  400cf2:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400cf5:	88 02                	mov    BYTE PTR [rdx],al
  400cf7:	83 45 e8 01          	add    DWORD PTR [rbp-0x18],0x1
  400cfb:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400cfe:	89 c2                	mov    edx,eax
  400d00:	c1 ea 1f             	shr    edx,0x1f
  400d03:	01 d0                	add    eax,edx
  400d05:	d1 f8                	sar    eax,1
  400d07:	83 c0 0a             	add    eax,0xa
  400d0a:	3b 45 e8             	cmp    eax,DWORD PTR [rbp-0x18]
  400d0d:	7f c6                	jg     400cd5 <getInstr+0x10c>
  400d0f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d13:	48 89 c7             	mov    rdi,rax
  400d16:	e8 e5 fa ff ff       	call   400800 <free@plt>
  400d1b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400d1f:	c9                   	leave  
  400d20:	c3                   	ret    

0000000000400d21 <checkSignal>:
  400d21:	55                   	push   rbp
  400d22:	48 89 e5             	mov    rbp,rsp
  400d25:	48 83 ec 10          	sub    rsp,0x10
  400d29:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  400d2c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  400d30:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400d33:	83 e8 04             	sub    eax,0x4
  400d36:	83 f8 09             	cmp    eax,0x9
  400d39:	0f 87 98 01 00 00    	ja     400ed7 <checkSignal+0x1b6>
  400d3f:	89 c0                	mov    eax,eax
  400d41:	48 8b 04 c5 c8 29 40 	mov    rax,QWORD PTR [rax*8+0x4029c8]
  400d48:	00 
  400d49:	ff e0                	jmp    rax
  400d4b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d4f:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  400d56:	48 89 c2             	mov    rdx,rax
  400d59:	b8 00 00 00 00       	mov    eax,0x0
  400d5e:	48 89 d7             	mov    rdi,rdx
  400d61:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  400d63:	48 89 c8             	mov    rax,rcx
  400d66:	48 f7 d0             	not    rax
  400d69:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  400d6d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d71:	48 01 d0             	add    rax,rdx
  400d74:	48 be 3a 09 53 49 47 	movabs rsi,0x4c4c49474953093a
  400d7b:	49 4c 4c 
  400d7e:	48 89 30             	mov    QWORD PTR [rax],rsi
  400d81:	66 c7 40 08 09 00    	mov    WORD PTR [rax+0x8],0x9
  400d87:	e9 73 01 00 00       	jmp    400eff <checkSignal+0x1de>
  400d8c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d90:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  400d97:	48 89 c2             	mov    rdx,rax
  400d9a:	b8 00 00 00 00       	mov    eax,0x0
  400d9f:	48 89 d7             	mov    rdi,rdx
  400da2:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  400da4:	48 89 c8             	mov    rax,rcx
  400da7:	48 f7 d0             	not    rax
  400daa:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  400dae:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400db2:	48 01 d0             	add    rax,rdx
  400db5:	48 be 3a 09 53 49 47 	movabs rsi,0x415254474953093a
  400dbc:	54 52 41 
  400dbf:	48 89 30             	mov    QWORD PTR [rax],rsi
  400dc2:	66 c7 40 08 50 09    	mov    WORD PTR [rax+0x8],0x950
  400dc8:	c6 40 0a 00          	mov    BYTE PTR [rax+0xa],0x0
  400dcc:	e9 2e 01 00 00       	jmp    400eff <checkSignal+0x1de>
  400dd1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400dd5:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  400ddc:	48 89 c2             	mov    rdx,rax
  400ddf:	b8 00 00 00 00       	mov    eax,0x0
  400de4:	48 89 d7             	mov    rdi,rdx
  400de7:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  400de9:	48 89 c8             	mov    rax,rcx
  400dec:	48 f7 d0             	not    rax
  400def:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  400df3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400df7:	48 01 d0             	add    rax,rdx
  400dfa:	48 be 3a 09 53 49 47 	movabs rsi,0x474553474953093a
  400e01:	53 45 47 
  400e04:	48 89 30             	mov    QWORD PTR [rax],rsi
  400e07:	66 c7 40 08 56 09    	mov    WORD PTR [rax+0x8],0x956
  400e0d:	c6 40 0a 00          	mov    BYTE PTR [rax+0xa],0x0
  400e11:	e9 e9 00 00 00       	jmp    400eff <checkSignal+0x1de>
  400e16:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e1a:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  400e21:	48 89 c2             	mov    rdx,rax
  400e24:	b8 00 00 00 00       	mov    eax,0x0
  400e29:	48 89 d7             	mov    rdi,rdx
  400e2c:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  400e2e:	48 89 c8             	mov    rax,rcx
  400e31:	48 f7 d0             	not    rax
  400e34:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  400e38:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e3c:	48 01 d0             	add    rax,rdx
  400e3f:	48 be 3a 09 53 49 47 	movabs rsi,0x535542474953093a
  400e46:	42 55 53 
  400e49:	48 89 30             	mov    QWORD PTR [rax],rsi
  400e4c:	66 c7 40 08 09 00    	mov    WORD PTR [rax+0x8],0x9
  400e52:	e9 a8 00 00 00       	jmp    400eff <checkSignal+0x1de>
  400e57:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e5b:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  400e62:	48 89 c2             	mov    rdx,rax
  400e65:	b8 00 00 00 00       	mov    eax,0x0
  400e6a:	48 89 d7             	mov    rdi,rdx
  400e6d:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  400e6f:	48 89 c8             	mov    rax,rcx
  400e72:	48 f7 d0             	not    rax
  400e75:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  400e79:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e7d:	48 01 d0             	add    rax,rdx
  400e80:	48 be 3a 09 53 49 47 	movabs rsi,0x455046474953093a
  400e87:	46 50 45 
  400e8a:	48 89 30             	mov    QWORD PTR [rax],rsi
  400e8d:	66 c7 40 08 09 00    	mov    WORD PTR [rax+0x8],0x9
  400e93:	eb 6a                	jmp    400eff <checkSignal+0x1de>
  400e95:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e99:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  400ea0:	48 89 c2             	mov    rdx,rax
  400ea3:	b8 00 00 00 00       	mov    eax,0x0
  400ea8:	48 89 d7             	mov    rdi,rdx
  400eab:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  400ead:	48 89 c8             	mov    rax,rcx
  400eb0:	48 f7 d0             	not    rax
  400eb3:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  400eb7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400ebb:	48 01 d0             	add    rax,rdx
  400ebe:	48 be 3a 09 53 49 47 	movabs rsi,0x504950474953093a
  400ec5:	50 49 50 
  400ec8:	48 89 30             	mov    QWORD PTR [rax],rsi
  400ecb:	66 c7 40 08 45 09    	mov    WORD PTR [rax+0x8],0x945
  400ed1:	c6 40 0a 00          	mov    BYTE PTR [rax+0xa],0x0
  400ed5:	eb 28                	jmp    400eff <checkSignal+0x1de>
  400ed7:	bf a8 29 40 00       	mov    edi,0x4029a8
  400edc:	b8 00 00 00 00       	mov    eax,0x0
  400ee1:	e8 8a f9 ff ff       	call   400870 <printf@plt>
  400ee6:	b9 30 2c 40 00       	mov    ecx,0x402c30
  400eeb:	ba a7 00 00 00       	mov    edx,0xa7
  400ef0:	be bb 29 40 00       	mov    esi,0x4029bb
  400ef5:	bf c2 29 40 00       	mov    edi,0x4029c2
  400efa:	e8 81 f9 ff ff       	call   400880 <__assert_fail@plt>
  400eff:	90                   	nop
  400f00:	c9                   	leave  
  400f01:	c3                   	ret    

0000000000400f02 <checkChanges>:
  400f02:	55                   	push   rbp
  400f03:	48 89 e5             	mov    rbp,rsp
  400f06:	48 83 ec 70          	sub    rsp,0x70
  400f0a:	48 89 7d a8          	mov    QWORD PTR [rbp-0x58],rdi
  400f0e:	48 89 75 a0          	mov    QWORD PTR [rbp-0x60],rsi
  400f12:	48 89 55 98          	mov    QWORD PTR [rbp-0x68],rdx
  400f16:	48 89 4d 90          	mov    QWORD PTR [rbp-0x70],rcx
  400f1a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  400f21:	00 00 
  400f23:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400f27:	31 c0                	xor    eax,eax
  400f29:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  400f2d:	48 3b 45 a0          	cmp    rax,QWORD PTR [rbp-0x60]
  400f31:	74 38                	je     400f6b <checkChanges+0x69>
  400f33:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
  400f37:	48 8b 4d a8          	mov    rcx,QWORD PTR [rbp-0x58]
  400f3b:	48 8b 55 98          	mov    rdx,QWORD PTR [rbp-0x68]
  400f3f:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  400f43:	49 89 f0             	mov    r8,rsi
  400f46:	be 18 2a 40 00       	mov    esi,0x402a18
  400f4b:	48 89 c7             	mov    rdi,rax
  400f4e:	b8 00 00 00 00       	mov    eax,0x0
  400f53:	e8 c8 f9 ff ff       	call   400920 <sprintf@plt>
  400f58:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  400f5c:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
  400f60:	48 89 d6             	mov    rsi,rdx
  400f63:	48 89 c7             	mov    rdi,rax
  400f66:	e8 a5 f9 ff ff       	call   400910 <strcat@plt>
  400f6b:	90                   	nop
  400f6c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400f70:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  400f77:	00 00 
  400f79:	74 05                	je     400f80 <checkChanges+0x7e>
  400f7b:	e8 d0 f8 ff ff       	call   400850 <__stack_chk_fail@plt>
  400f80:	c9                   	leave  
  400f81:	c3                   	ret    

0000000000400f82 <checkFlags>:
  400f82:	55                   	push   rbp
  400f83:	48 89 e5             	mov    rbp,rsp
  400f86:	48 81 ec 10 01 00 00 	sub    rsp,0x110
  400f8d:	48 89 bd 08 ff ff ff 	mov    QWORD PTR [rbp-0xf8],rdi
  400f94:	48 89 b5 00 ff ff ff 	mov    QWORD PTR [rbp-0x100],rsi
  400f9b:	48 89 95 f8 fe ff ff 	mov    QWORD PTR [rbp-0x108],rdx
  400fa2:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  400fa9:	00 00 
  400fab:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400faf:	31 c0                	xor    eax,eax
  400fb1:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  400fb8:	48 3b 85 00 ff ff ff 	cmp    rax,QWORD PTR [rbp-0x100]
  400fbf:	0f 84 98 05 00 00    	je     40155d <checkFlags+0x5db>
  400fc5:	48 8b 8d 00 ff ff ff 	mov    rcx,QWORD PTR [rbp-0x100]
  400fcc:	48 8b 95 08 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xf8]
  400fd3:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  400fda:	be 2b 2a 40 00       	mov    esi,0x402a2b
  400fdf:	48 89 c7             	mov    rdi,rax
  400fe2:	b8 00 00 00 00       	mov    eax,0x0
  400fe7:	e8 34 f9 ff ff       	call   400920 <sprintf@plt>
  400fec:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  400ff3:	48 89 85 18 ff ff ff 	mov    QWORD PTR [rbp-0xe8],rax
  400ffa:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  401001:	48 89 85 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rax
  401008:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
  40100f:	48 33 85 20 ff ff ff 	xor    rax,QWORD PTR [rbp-0xe0]
  401016:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  40101d:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401024:	83 e0 01             	and    eax,0x1
  401027:	48 85 c0             	test   rax,rax
  40102a:	74 26                	je     401052 <checkFlags+0xd0>
  40102c:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  401033:	c7 00 20 43 46 00    	mov    DWORD PTR [rax],0x464320
  401039:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  401040:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  401047:	48 89 d6             	mov    rsi,rdx
  40104a:	48 89 c7             	mov    rdi,rax
  40104d:	e8 be f8 ff ff       	call   400910 <strcat@plt>
  401052:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401059:	48 c1 e8 02          	shr    rax,0x2
  40105d:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  401064:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  40106b:	83 e0 01             	and    eax,0x1
  40106e:	48 85 c0             	test   rax,rax
  401071:	74 26                	je     401099 <checkFlags+0x117>
  401073:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  40107a:	c7 00 20 50 46 00    	mov    DWORD PTR [rax],0x465020
  401080:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  401087:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  40108e:	48 89 d6             	mov    rsi,rdx
  401091:	48 89 c7             	mov    rdi,rax
  401094:	e8 77 f8 ff ff       	call   400910 <strcat@plt>
  401099:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4010a0:	48 c1 e8 02          	shr    rax,0x2
  4010a4:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  4010ab:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4010b2:	83 e0 01             	and    eax,0x1
  4010b5:	48 85 c0             	test   rax,rax
  4010b8:	74 26                	je     4010e0 <checkFlags+0x15e>
  4010ba:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  4010c1:	c7 00 20 41 46 00    	mov    DWORD PTR [rax],0x464120
  4010c7:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  4010ce:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4010d5:	48 89 d6             	mov    rsi,rdx
  4010d8:	48 89 c7             	mov    rdi,rax
  4010db:	e8 30 f8 ff ff       	call   400910 <strcat@plt>
  4010e0:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4010e7:	48 c1 e8 02          	shr    rax,0x2
  4010eb:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  4010f2:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4010f9:	83 e0 01             	and    eax,0x1
  4010fc:	48 85 c0             	test   rax,rax
  4010ff:	74 26                	je     401127 <checkFlags+0x1a5>
  401101:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  401108:	c7 00 20 5a 46 00    	mov    DWORD PTR [rax],0x465a20
  40110e:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  401115:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  40111c:	48 89 d6             	mov    rsi,rdx
  40111f:	48 89 c7             	mov    rdi,rax
  401122:	e8 e9 f7 ff ff       	call   400910 <strcat@plt>
  401127:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  40112e:	48 d1 e8             	shr    rax,1
  401131:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  401138:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  40113f:	83 e0 01             	and    eax,0x1
  401142:	48 85 c0             	test   rax,rax
  401145:	74 26                	je     40116d <checkFlags+0x1eb>
  401147:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  40114e:	c7 00 20 53 46 00    	mov    DWORD PTR [rax],0x465320
  401154:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  40115b:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  401162:	48 89 d6             	mov    rsi,rdx
  401165:	48 89 c7             	mov    rdi,rax
  401168:	e8 a3 f7 ff ff       	call   400910 <strcat@plt>
  40116d:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401174:	48 d1 e8             	shr    rax,1
  401177:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  40117e:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401185:	83 e0 01             	and    eax,0x1
  401188:	48 85 c0             	test   rax,rax
  40118b:	74 26                	je     4011b3 <checkFlags+0x231>
  40118d:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  401194:	c7 00 20 54 46 00    	mov    DWORD PTR [rax],0x465420
  40119a:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  4011a1:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4011a8:	48 89 d6             	mov    rsi,rdx
  4011ab:	48 89 c7             	mov    rdi,rax
  4011ae:	e8 5d f7 ff ff       	call   400910 <strcat@plt>
  4011b3:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4011ba:	48 d1 e8             	shr    rax,1
  4011bd:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  4011c4:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4011cb:	83 e0 01             	and    eax,0x1
  4011ce:	48 85 c0             	test   rax,rax
  4011d1:	74 26                	je     4011f9 <checkFlags+0x277>
  4011d3:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  4011da:	c7 00 20 49 46 00    	mov    DWORD PTR [rax],0x464920
  4011e0:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  4011e7:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4011ee:	48 89 d6             	mov    rsi,rdx
  4011f1:	48 89 c7             	mov    rdi,rax
  4011f4:	e8 17 f7 ff ff       	call   400910 <strcat@plt>
  4011f9:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401200:	48 d1 e8             	shr    rax,1
  401203:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  40120a:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401211:	83 e0 01             	and    eax,0x1
  401214:	48 85 c0             	test   rax,rax
  401217:	74 26                	je     40123f <checkFlags+0x2bd>
  401219:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  401220:	c7 00 20 44 46 00    	mov    DWORD PTR [rax],0x464420
  401226:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  40122d:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  401234:	48 89 d6             	mov    rsi,rdx
  401237:	48 89 c7             	mov    rdi,rax
  40123a:	e8 d1 f6 ff ff       	call   400910 <strcat@plt>
  40123f:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401246:	48 d1 e8             	shr    rax,1
  401249:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  401250:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401257:	83 e0 01             	and    eax,0x1
  40125a:	48 85 c0             	test   rax,rax
  40125d:	74 26                	je     401285 <checkFlags+0x303>
  40125f:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  401266:	c7 00 20 4f 46 00    	mov    DWORD PTR [rax],0x464f20
  40126c:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  401273:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  40127a:	48 89 d6             	mov    rsi,rdx
  40127d:	48 89 c7             	mov    rdi,rax
  401280:	e8 8b f6 ff ff       	call   400910 <strcat@plt>
  401285:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  40128c:	48 d1 e8             	shr    rax,1
  40128f:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  401296:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  40129d:	83 e0 01             	and    eax,0x1
  4012a0:	48 85 c0             	test   rax,rax
  4012a3:	74 2c                	je     4012d1 <checkFlags+0x34f>
  4012a5:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  4012ac:	c7 00 20 49 4f 50    	mov    DWORD PTR [rax],0x504f4920
  4012b2:	66 c7 40 04 4c 00    	mov    WORD PTR [rax+0x4],0x4c
  4012b8:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  4012bf:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4012c6:	48 89 d6             	mov    rsi,rdx
  4012c9:	48 89 c7             	mov    rdi,rax
  4012cc:	e8 3f f6 ff ff       	call   400910 <strcat@plt>
  4012d1:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4012d8:	48 d1 e8             	shr    rax,1
  4012db:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  4012e2:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4012e9:	83 e0 01             	and    eax,0x1
  4012ec:	48 85 c0             	test   rax,rax
  4012ef:	74 2c                	je     40131d <checkFlags+0x39b>
  4012f1:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  4012f8:	c7 00 20 49 4f 50    	mov    DWORD PTR [rax],0x504f4920
  4012fe:	66 c7 40 04 4c 00    	mov    WORD PTR [rax+0x4],0x4c
  401304:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  40130b:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  401312:	48 89 d6             	mov    rsi,rdx
  401315:	48 89 c7             	mov    rdi,rax
  401318:	e8 f3 f5 ff ff       	call   400910 <strcat@plt>
  40131d:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401324:	48 d1 e8             	shr    rax,1
  401327:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  40132e:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401335:	83 e0 01             	and    eax,0x1
  401338:	48 85 c0             	test   rax,rax
  40133b:	74 26                	je     401363 <checkFlags+0x3e1>
  40133d:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  401344:	c7 00 20 4e 54 00    	mov    DWORD PTR [rax],0x544e20
  40134a:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  401351:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  401358:	48 89 d6             	mov    rsi,rdx
  40135b:	48 89 c7             	mov    rdi,rax
  40135e:	e8 ad f5 ff ff       	call   400910 <strcat@plt>
  401363:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  40136a:	48 c1 e8 02          	shr    rax,0x2
  40136e:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  401375:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  40137c:	83 e0 01             	and    eax,0x1
  40137f:	48 85 c0             	test   rax,rax
  401382:	74 26                	je     4013aa <checkFlags+0x428>
  401384:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  40138b:	c7 00 20 52 46 00    	mov    DWORD PTR [rax],0x465220
  401391:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  401398:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  40139f:	48 89 d6             	mov    rsi,rdx
  4013a2:	48 89 c7             	mov    rdi,rax
  4013a5:	e8 66 f5 ff ff       	call   400910 <strcat@plt>
  4013aa:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4013b1:	48 d1 e8             	shr    rax,1
  4013b4:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  4013bb:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4013c2:	83 e0 01             	and    eax,0x1
  4013c5:	48 85 c0             	test   rax,rax
  4013c8:	74 26                	je     4013f0 <checkFlags+0x46e>
  4013ca:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  4013d1:	c7 00 20 56 4d 00    	mov    DWORD PTR [rax],0x4d5620
  4013d7:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  4013de:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4013e5:	48 89 d6             	mov    rsi,rdx
  4013e8:	48 89 c7             	mov    rdi,rax
  4013eb:	e8 20 f5 ff ff       	call   400910 <strcat@plt>
  4013f0:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4013f7:	48 d1 e8             	shr    rax,1
  4013fa:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  401401:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401408:	83 e0 01             	and    eax,0x1
  40140b:	48 85 c0             	test   rax,rax
  40140e:	74 26                	je     401436 <checkFlags+0x4b4>
  401410:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  401417:	c7 00 20 41 43 00    	mov    DWORD PTR [rax],0x434120
  40141d:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  401424:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  40142b:	48 89 d6             	mov    rsi,rdx
  40142e:	48 89 c7             	mov    rdi,rax
  401431:	e8 da f4 ff ff       	call   400910 <strcat@plt>
  401436:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  40143d:	48 d1 e8             	shr    rax,1
  401440:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  401447:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  40144e:	83 e0 01             	and    eax,0x1
  401451:	48 85 c0             	test   rax,rax
  401454:	74 2a                	je     401480 <checkFlags+0x4fe>
  401456:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  40145d:	c7 00 20 56 49 46    	mov    DWORD PTR [rax],0x46495620
  401463:	c6 40 04 00          	mov    BYTE PTR [rax+0x4],0x0
  401467:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  40146e:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  401475:	48 89 d6             	mov    rsi,rdx
  401478:	48 89 c7             	mov    rdi,rax
  40147b:	e8 90 f4 ff ff       	call   400910 <strcat@plt>
  401480:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401487:	48 d1 e8             	shr    rax,1
  40148a:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  401491:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  401498:	83 e0 01             	and    eax,0x1
  40149b:	48 85 c0             	test   rax,rax
  40149e:	74 2a                	je     4014ca <checkFlags+0x548>
  4014a0:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  4014a7:	c7 00 20 56 49 50    	mov    DWORD PTR [rax],0x50495620
  4014ad:	c6 40 04 00          	mov    BYTE PTR [rax+0x4],0x0
  4014b1:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  4014b8:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4014bf:	48 89 d6             	mov    rsi,rdx
  4014c2:	48 89 c7             	mov    rdi,rax
  4014c5:	e8 46 f4 ff ff       	call   400910 <strcat@plt>
  4014ca:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4014d1:	48 d1 e8             	shr    rax,1
  4014d4:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  4014db:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  4014e2:	83 e0 01             	and    eax,0x1
  4014e5:	48 85 c0             	test   rax,rax
  4014e8:	74 26                	je     401510 <checkFlags+0x58e>
  4014ea:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  4014f1:	c7 00 20 49 44 00    	mov    DWORD PTR [rax],0x444920
  4014f7:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
  4014fe:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  401505:	48 89 d6             	mov    rsi,rdx
  401508:	48 89 c7             	mov    rdi,rax
  40150b:	e8 00 f4 ff ff       	call   400910 <strcat@plt>
  401510:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  401517:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  40151e:	48 89 c2             	mov    rdx,rax
  401521:	b8 00 00 00 00       	mov    eax,0x0
  401526:	48 89 d7             	mov    rdi,rdx
  401529:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  40152b:	48 89 c8             	mov    rax,rcx
  40152e:	48 f7 d0             	not    rax
  401531:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  401535:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  40153c:	48 01 d0             	add    rax,rdx
  40153f:	66 c7 00 09 00       	mov    WORD PTR [rax],0x9
  401544:	48 8d 95 70 ff ff ff 	lea    rdx,[rbp-0x90]
  40154b:	48 8b 85 f8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x108]
  401552:	48 89 d6             	mov    rsi,rdx
  401555:	48 89 c7             	mov    rdi,rax
  401558:	e8 b3 f3 ff ff       	call   400910 <strcat@plt>
  40155d:	90                   	nop
  40155e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401562:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401569:	00 00 
  40156b:	74 05                	je     401572 <checkFlags+0x5f0>
  40156d:	e8 de f2 ff ff       	call   400850 <__stack_chk_fail@plt>
  401572:	c9                   	leave  
  401573:	c3                   	ret    

0000000000401574 <checkPointed>:
  401574:	55                   	push   rbp
  401575:	48 89 e5             	mov    rbp,rsp
  401578:	48 81 ec 90 00 00 00 	sub    rsp,0x90
  40157f:	48 89 7d 88          	mov    QWORD PTR [rbp-0x78],rdi
  401583:	48 89 75 80          	mov    QWORD PTR [rbp-0x80],rsi
  401587:	48 89 95 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rdx
  40158e:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401595:	00 00 
  401597:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40159b:	31 c0                	xor    eax,eax
  40159d:	c6 45 a0 55          	mov    BYTE PTR [rbp-0x60],0x55
  4015a1:	c6 45 a1 55          	mov    BYTE PTR [rbp-0x5f],0x55
  4015a5:	c6 45 a2 55          	mov    BYTE PTR [rbp-0x5e],0x55
  4015a9:	c6 45 a3 55          	mov    BYTE PTR [rbp-0x5d],0x55
  4015ad:	c6 45 a4 55          	mov    BYTE PTR [rbp-0x5c],0x55
  4015b1:	c6 45 a5 55          	mov    BYTE PTR [rbp-0x5b],0x55
  4015b5:	c6 45 a6 55          	mov    BYTE PTR [rbp-0x5a],0x55
  4015b9:	c6 45 a7 55          	mov    BYTE PTR [rbp-0x59],0x55
  4015bd:	c6 45 a8 00          	mov    BYTE PTR [rbp-0x58],0x0
  4015c1:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  4015c5:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
  4015c9:	ba 08 00 00 00       	mov    edx,0x8
  4015ce:	48 89 ce             	mov    rsi,rcx
  4015d1:	48 89 c7             	mov    rdi,rax
  4015d4:	e8 c7 f2 ff ff       	call   4008a0 <memcmp@plt>
  4015d9:	85 c0                	test   eax,eax
  4015db:	74 3f                	je     40161c <checkPointed+0xa8>
  4015dd:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
  4015e1:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4015e4:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
  4015e8:	48 8b 4d 98          	mov    rcx,QWORD PTR [rbp-0x68]
  4015ec:	48 8b 55 80          	mov    rdx,QWORD PTR [rbp-0x80]
  4015f0:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  4015f4:	be 40 2a 40 00       	mov    esi,0x402a40
  4015f9:	48 89 c7             	mov    rdi,rax
  4015fc:	b8 00 00 00 00       	mov    eax,0x0
  401601:	e8 1a f3 ff ff       	call   400920 <sprintf@plt>
  401606:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  40160a:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  401611:	48 89 d6             	mov    rsi,rdx
  401614:	48 89 c7             	mov    rdi,rax
  401617:	e8 f4 f2 ff ff       	call   400910 <strcat@plt>
  40161c:	90                   	nop
  40161d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401621:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401628:	00 00 
  40162a:	74 05                	je     401631 <checkPointed+0xbd>
  40162c:	e8 1f f2 ff ff       	call   400850 <__stack_chk_fail@plt>
  401631:	c9                   	leave  
  401632:	c3                   	ret    

0000000000401633 <checkStack>:
  401633:	55                   	push   rbp
  401634:	48 89 e5             	mov    rbp,rsp
  401637:	48 81 ec a0 00 00 00 	sub    rsp,0xa0
  40163e:	48 89 7d 88          	mov    QWORD PTR [rbp-0x78],rdi
  401642:	48 89 75 80          	mov    QWORD PTR [rbp-0x80],rsi
  401646:	48 89 95 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rdx
  40164d:	48 89 8d 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],rcx
  401654:	4c 89 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],r8
  40165b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401662:	00 00 
  401664:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401668:	31 c0                	xor    eax,eax
  40166a:	48 8b 0d 4f 2b 20 00 	mov    rcx,QWORD PTR [rip+0x202b4f]        # 6041c0 <referenceStack>
  401671:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
  401675:	ba 00 01 00 00       	mov    edx,0x100
  40167a:	48 89 ce             	mov    rsi,rcx
  40167d:	48 89 c7             	mov    rdi,rax
  401680:	e8 1b f2 ff ff       	call   4008a0 <memcmp@plt>
  401685:	85 c0                	test   eax,eax
  401687:	74 4b                	je     4016d4 <checkStack+0xa1>
  401689:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
  40168d:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  401694:	48 89 c2             	mov    rdx,rax
  401697:	b8 00 00 00 00       	mov    eax,0x0
  40169c:	48 89 d7             	mov    rdi,rdx
  40169f:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  4016a1:	48 89 c8             	mov    rax,rcx
  4016a4:	48 f7 d0             	not    rax
  4016a7:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  4016ab:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
  4016af:	48 01 d0             	add    rax,rdx
  4016b2:	48 be 64 75 6d 6d 79 	movabs rsi,0x617453796d6d7564
  4016b9:	53 74 61 
  4016bc:	48 89 30             	mov    QWORD PTR [rax],rsi
  4016bf:	48 be 63 6b 20 63 68 	movabs rsi,0x676e616863206b63
  4016c6:	61 6e 67 
  4016c9:	48 89 70 08          	mov    QWORD PTR [rax+0x8],rsi
  4016cd:	c7 40 10 65 64 09 00 	mov    DWORD PTR [rax+0x10],0x96465
  4016d4:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
  4016db:	48 83 c0 08          	add    rax,0x8
  4016df:	48 3b 85 78 ff ff ff 	cmp    rax,QWORD PTR [rbp-0x88]
  4016e6:	0f 85 81 00 00 00    	jne    40176d <checkStack+0x13a>
  4016ec:	c6 45 a0 55          	mov    BYTE PTR [rbp-0x60],0x55
  4016f0:	c6 45 a1 55          	mov    BYTE PTR [rbp-0x5f],0x55
  4016f4:	c6 45 a2 55          	mov    BYTE PTR [rbp-0x5e],0x55
  4016f8:	c6 45 a3 55          	mov    BYTE PTR [rbp-0x5d],0x55
  4016fc:	c6 45 a4 55          	mov    BYTE PTR [rbp-0x5c],0x55
  401700:	c6 45 a5 55          	mov    BYTE PTR [rbp-0x5b],0x55
  401704:	c6 45 a6 55          	mov    BYTE PTR [rbp-0x5a],0x55
  401708:	c6 45 a7 55          	mov    BYTE PTR [rbp-0x59],0x55
  40170c:	c6 45 a8 00          	mov    BYTE PTR [rbp-0x58],0x0
  401710:	48 8d 8d 68 ff ff ff 	lea    rcx,[rbp-0x98]
  401717:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
  40171e:	ba 08 00 00 00       	mov    edx,0x8
  401723:	48 89 ce             	mov    rsi,rcx
  401726:	48 89 c7             	mov    rdi,rax
  401729:	e8 72 f1 ff ff       	call   4008a0 <memcmp@plt>
  40172e:	85 c0                	test   eax,eax
  401730:	74 3b                	je     40176d <checkStack+0x13a>
  401732:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
  401739:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40173c:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
  401740:	48 8b 55 98          	mov    rdx,QWORD PTR [rbp-0x68]
  401744:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  401748:	be 58 2a 40 00       	mov    esi,0x402a58
  40174d:	48 89 c7             	mov    rdi,rax
  401750:	b8 00 00 00 00       	mov    eax,0x0
  401755:	e8 c6 f1 ff ff       	call   400920 <sprintf@plt>
  40175a:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  40175e:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
  401762:	48 89 d6             	mov    rsi,rdx
  401765:	48 89 c7             	mov    rdi,rax
  401768:	e8 a3 f1 ff ff       	call   400910 <strcat@plt>
  40176d:	90                   	nop
  40176e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401772:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401779:	00 00 
  40177b:	74 05                	je     401782 <checkStack+0x14f>
  40177d:	e8 ce f0 ff ff       	call   400850 <__stack_chk_fail@plt>
  401782:	c9                   	leave  
  401783:	c3                   	ret    

0000000000401784 <checkRip>:
  401784:	55                   	push   rbp
  401785:	48 89 e5             	mov    rbp,rsp
  401788:	48 83 ec 70          	sub    rsp,0x70
  40178c:	48 89 7d 98          	mov    QWORD PTR [rbp-0x68],rdi
  401790:	48 89 75 90          	mov    QWORD PTR [rbp-0x70],rsi
  401794:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40179b:	00 00 
  40179d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4017a1:	31 c0                	xor    eax,eax
  4017a3:	48 8b 05 2e 2a 20 00 	mov    rax,QWORD PTR [rip+0x202a2e]        # 6041d8 <buffer>
  4017aa:	48 8b 15 df 2a 20 00 	mov    rdx,QWORD PTR [rip+0x202adf]        # 604290 <instructionLength>
  4017b1:	48 83 c2 0a          	add    rdx,0xa
  4017b5:	48 01 d0             	add    rax,rdx
  4017b8:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
  4017bc:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
  4017c0:	48 3b 45 a0          	cmp    rax,QWORD PTR [rbp-0x60]
  4017c4:	74 77                	je     40183d <checkRip+0xb9>
  4017c6:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  4017ca:	48 3b 45 98          	cmp    rax,QWORD PTR [rbp-0x68]
  4017ce:	76 2e                	jbe    4017fe <checkRip+0x7a>
  4017d0:	48 8b 55 a0          	mov    rdx,QWORD PTR [rbp-0x60]
  4017d4:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
  4017d8:	48 29 c2             	sub    rdx,rax
  4017db:	48 89 d0             	mov    rax,rdx
  4017de:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
  4017e2:	48 8b 55 a8          	mov    rdx,QWORD PTR [rbp-0x58]
  4017e6:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  4017ea:	be 70 2a 40 00       	mov    esi,0x402a70
  4017ef:	48 89 c7             	mov    rdi,rax
  4017f2:	b8 00 00 00 00       	mov    eax,0x0
  4017f7:	e8 24 f1 ff ff       	call   400920 <sprintf@plt>
  4017fc:	eb 2c                	jmp    40182a <checkRip+0xa6>
  4017fe:	48 8b 55 98          	mov    rdx,QWORD PTR [rbp-0x68]
  401802:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  401806:	48 29 c2             	sub    rdx,rax
  401809:	48 89 d0             	mov    rax,rdx
  40180c:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
  401810:	48 8b 55 a8          	mov    rdx,QWORD PTR [rbp-0x58]
  401814:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  401818:	be 98 2a 40 00       	mov    esi,0x402a98
  40181d:	48 89 c7             	mov    rdi,rax
  401820:	b8 00 00 00 00       	mov    eax,0x0
  401825:	e8 f6 f0 ff ff       	call   400920 <sprintf@plt>
  40182a:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  40182e:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
  401832:	48 89 d6             	mov    rsi,rdx
  401835:	48 89 c7             	mov    rdi,rax
  401838:	e8 d3 f0 ff ff       	call   400910 <strcat@plt>
  40183d:	90                   	nop
  40183e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401842:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401849:	00 00 
  40184b:	74 05                	je     401852 <checkRip+0xce>
  40184d:	e8 fe ef ff ff       	call   400850 <__stack_chk_fail@plt>
  401852:	c9                   	leave  
  401853:	c3                   	ret    

0000000000401854 <handlerFunc>:
  401854:	55                   	push   rbp
  401855:	48 89 e5             	mov    rbp,rsp
  401858:	53                   	push   rbx
  401859:	48 81 ec e8 02 00 00 	sub    rsp,0x2e8
  401860:	89 bd 2c fd ff ff    	mov    DWORD PTR [rbp-0x2d4],edi
  401866:	48 89 b5 20 fd ff ff 	mov    QWORD PTR [rbp-0x2e0],rsi
  40186d:	48 89 95 18 fd ff ff 	mov    QWORD PTR [rbp-0x2e8],rdx
  401874:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40187b:	00 00 
  40187d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  401881:	31 c0                	xor    eax,eax
  401883:	48 8b 05 f6 28 20 00 	mov    rax,QWORD PTR [rip+0x2028f6]        # 604180 <back+0x80>
  40188a:	80 cc 01             	or     ah,0x1
  40188d:	48 89 05 ec 28 20 00 	mov    QWORD PTR [rip+0x2028ec],rax        # 604180 <back+0x80>
  401894:	83 bd 2c fd ff ff 04 	cmp    DWORD PTR [rbp-0x2d4],0x4
  40189b:	75 48                	jne    4018e5 <handlerFunc+0x91>
  40189d:	48 8b 85 18 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2e8]
  4018a4:	48 89 85 d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],rax
  4018ab:	48 8b 85 d8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x228]
  4018b2:	48 8b 80 b0 00 00 00 	mov    rax,QWORD PTR [rax+0xb0]
  4018b9:	80 e4 fe             	and    ah,0xfe
  4018bc:	48 89 c2             	mov    rdx,rax
  4018bf:	48 8b 85 d8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x228]
  4018c6:	48 89 90 b0 00 00 00 	mov    QWORD PTR [rax+0xb0],rdx
  4018cd:	ba 2b 28 40 00       	mov    edx,0x40282b
  4018d2:	48 8b 85 d8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x228]
  4018d9:	48 89 90 a8 00 00 00 	mov    QWORD PTR [rax+0xa8],rdx
  4018e0:	e9 4f 07 00 00       	jmp    402034 <handlerFunc+0x7e0>
  4018e5:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  4018ec:	b8 00 00 00 00       	mov    eax,0x0
  4018f1:	b9 40 00 00 00       	mov    ecx,0x40
  4018f6:	48 89 d7             	mov    rdi,rdx
  4018f9:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4018fc:	c7 85 38 fd ff ff 00 	mov    DWORD PTR [rbp-0x2c8],0x0
  401903:	00 00 00 
  401906:	eb 25                	jmp    40192d <handlerFunc+0xd9>
  401908:	8b 85 38 fd ff ff    	mov    eax,DWORD PTR [rbp-0x2c8]
  40190e:	48 98                	cdqe   
  401910:	0f b6 90 a0 41 60 00 	movzx  edx,BYTE PTR [rax+0x6041a0]
  401917:	8b 85 38 fd ff ff    	mov    eax,DWORD PTR [rbp-0x2c8]
  40191d:	48 98                	cdqe   
  40191f:	88 94 05 e0 fd ff ff 	mov    BYTE PTR [rbp+rax*1-0x220],dl
  401926:	83 85 38 fd ff ff 01 	add    DWORD PTR [rbp-0x2c8],0x1
  40192d:	8b 85 38 fd ff ff    	mov    eax,DWORD PTR [rbp-0x2c8]
  401933:	48 63 d8             	movsxd rbx,eax
  401936:	bf a0 41 60 00       	mov    edi,0x6041a0
  40193b:	e8 00 ef ff ff       	call   400840 <strlen@plt>
  401940:	48 39 c3             	cmp    rbx,rax
  401943:	72 c3                	jb     401908 <handlerFunc+0xb4>
  401945:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  40194c:	8b 85 2c fd ff ff    	mov    eax,DWORD PTR [rbp-0x2d4]
  401952:	48 89 d6             	mov    rsi,rdx
  401955:	89 c7                	mov    edi,eax
  401957:	e8 c5 f3 ff ff       	call   400d21 <checkSignal>
  40195c:	48 8b 85 18 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2e8]
  401963:	48 89 85 40 fd ff ff 	mov    QWORD PTR [rbp-0x2c0],rax
  40196a:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401971:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  401978:	48 89 85 48 fd ff ff 	mov    QWORD PTR [rbp-0x2b8],rax
  40197f:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401986:	48 8b 80 80 00 00 00 	mov    rax,QWORD PTR [rax+0x80]
  40198d:	48 89 85 50 fd ff ff 	mov    QWORD PTR [rbp-0x2b0],rax
  401994:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  40199b:	48 8b 80 98 00 00 00 	mov    rax,QWORD PTR [rax+0x98]
  4019a2:	48 89 85 58 fd ff ff 	mov    QWORD PTR [rbp-0x2a8],rax
  4019a9:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  4019b0:	48 8b 80 88 00 00 00 	mov    rax,QWORD PTR [rax+0x88]
  4019b7:	48 89 85 60 fd ff ff 	mov    QWORD PTR [rbp-0x2a0],rax
  4019be:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  4019c5:	48 8b 40 70          	mov    rax,QWORD PTR [rax+0x70]
  4019c9:	48 89 85 68 fd ff ff 	mov    QWORD PTR [rbp-0x298],rax
  4019d0:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  4019d7:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
  4019db:	48 89 85 70 fd ff ff 	mov    QWORD PTR [rbp-0x290],rax
  4019e2:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  4019e9:	48 8b 40 28          	mov    rax,QWORD PTR [rax+0x28]
  4019ed:	48 89 85 78 fd ff ff 	mov    QWORD PTR [rbp-0x288],rax
  4019f4:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  4019fb:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
  4019ff:	48 89 85 80 fd ff ff 	mov    QWORD PTR [rbp-0x280],rax
  401a06:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401a0d:	48 8b 40 38          	mov    rax,QWORD PTR [rax+0x38]
  401a11:	48 89 85 88 fd ff ff 	mov    QWORD PTR [rbp-0x278],rax
  401a18:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401a1f:	48 8b 40 40          	mov    rax,QWORD PTR [rax+0x40]
  401a23:	48 89 85 90 fd ff ff 	mov    QWORD PTR [rbp-0x270],rax
  401a2a:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401a31:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  401a35:	48 89 85 98 fd ff ff 	mov    QWORD PTR [rbp-0x268],rax
  401a3c:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401a43:	48 8b 40 50          	mov    rax,QWORD PTR [rax+0x50]
  401a47:	48 89 85 a0 fd ff ff 	mov    QWORD PTR [rbp-0x260],rax
  401a4e:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401a55:	48 8b 40 58          	mov    rax,QWORD PTR [rax+0x58]
  401a59:	48 89 85 a8 fd ff ff 	mov    QWORD PTR [rbp-0x258],rax
  401a60:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401a67:	48 8b 40 60          	mov    rax,QWORD PTR [rax+0x60]
  401a6b:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  401a72:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401a79:	48 8b 80 a0 00 00 00 	mov    rax,QWORD PTR [rax+0xa0]
  401a80:	48 89 85 b8 fd ff ff 	mov    QWORD PTR [rbp-0x248],rax
  401a87:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401a8e:	48 8b 40 78          	mov    rax,QWORD PTR [rax+0x78]
  401a92:	48 89 85 c0 fd ff ff 	mov    QWORD PTR [rbp-0x240],rax
  401a99:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401aa0:	48 8b 80 b0 00 00 00 	mov    rax,QWORD PTR [rax+0xb0]
  401aa7:	48 89 85 c8 fd ff ff 	mov    QWORD PTR [rbp-0x238],rax
  401aae:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  401ab5:	48 8b 80 a8 00 00 00 	mov    rax,QWORD PTR [rax+0xa8]
  401abc:	48 89 85 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],rax
  401ac3:	48 8b 05 36 27 20 00 	mov    rax,QWORD PTR [rip+0x202736]        # 604200 <pointer>
  401aca:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401ad1:	48 8b b5 48 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2b8]
  401ad8:	48 89 d1             	mov    rcx,rdx
  401adb:	ba bc 2a 40 00       	mov    edx,0x402abc
  401ae0:	48 89 c7             	mov    rdi,rax
  401ae3:	e8 1a f4 ff ff       	call   400f02 <checkChanges>
  401ae8:	48 8b 05 19 27 20 00 	mov    rax,QWORD PTR [rip+0x202719]        # 604208 <pointer+0x8>
  401aef:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401af6:	48 8b b5 50 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2b0]
  401afd:	48 89 d1             	mov    rcx,rdx
  401b00:	ba c0 2a 40 00       	mov    edx,0x402ac0
  401b05:	48 89 c7             	mov    rdi,rax
  401b08:	e8 f5 f3 ff ff       	call   400f02 <checkChanges>
  401b0d:	48 8b 05 fc 26 20 00 	mov    rax,QWORD PTR [rip+0x2026fc]        # 604210 <pointer+0x10>
  401b14:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401b1b:	48 8b b5 58 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2a8]
  401b22:	48 89 d1             	mov    rcx,rdx
  401b25:	ba c4 2a 40 00       	mov    edx,0x402ac4
  401b2a:	48 89 c7             	mov    rdi,rax
  401b2d:	e8 d0 f3 ff ff       	call   400f02 <checkChanges>
  401b32:	48 8b 05 df 26 20 00 	mov    rax,QWORD PTR [rip+0x2026df]        # 604218 <pointer+0x18>
  401b39:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401b40:	48 8b b5 60 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2a0]
  401b47:	48 89 d1             	mov    rcx,rdx
  401b4a:	ba c8 2a 40 00       	mov    edx,0x402ac8
  401b4f:	48 89 c7             	mov    rdi,rax
  401b52:	e8 ab f3 ff ff       	call   400f02 <checkChanges>
  401b57:	48 8b 05 c2 26 20 00 	mov    rax,QWORD PTR [rip+0x2026c2]        # 604220 <pointer+0x20>
  401b5e:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401b65:	48 8b b5 68 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x298]
  401b6c:	48 89 d1             	mov    rcx,rdx
  401b6f:	ba cc 2a 40 00       	mov    edx,0x402acc
  401b74:	48 89 c7             	mov    rdi,rax
  401b77:	e8 86 f3 ff ff       	call   400f02 <checkChanges>
  401b7c:	48 8b 05 a5 26 20 00 	mov    rax,QWORD PTR [rip+0x2026a5]        # 604228 <pointer+0x28>
  401b83:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401b8a:	48 8b b5 70 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x290]
  401b91:	48 89 d1             	mov    rcx,rdx
  401b94:	ba d0 2a 40 00       	mov    edx,0x402ad0
  401b99:	48 89 c7             	mov    rdi,rax
  401b9c:	e8 61 f3 ff ff       	call   400f02 <checkChanges>
  401ba1:	48 8b 05 88 26 20 00 	mov    rax,QWORD PTR [rip+0x202688]        # 604230 <pointer+0x30>
  401ba8:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401baf:	48 8b b5 78 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x288]
  401bb6:	48 89 d1             	mov    rcx,rdx
  401bb9:	ba d4 2a 40 00       	mov    edx,0x402ad4
  401bbe:	48 89 c7             	mov    rdi,rax
  401bc1:	e8 3c f3 ff ff       	call   400f02 <checkChanges>
  401bc6:	48 8b 05 6b 26 20 00 	mov    rax,QWORD PTR [rip+0x20266b]        # 604238 <pointer+0x38>
  401bcd:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401bd4:	48 8b b5 80 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x280]
  401bdb:	48 89 d1             	mov    rcx,rdx
  401bde:	ba d7 2a 40 00       	mov    edx,0x402ad7
  401be3:	48 89 c7             	mov    rdi,rax
  401be6:	e8 17 f3 ff ff       	call   400f02 <checkChanges>
  401beb:	48 8b 05 4e 26 20 00 	mov    rax,QWORD PTR [rip+0x20264e]        # 604240 <pointer+0x40>
  401bf2:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401bf9:	48 8b b5 88 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x278]
  401c00:	48 89 d1             	mov    rcx,rdx
  401c03:	ba da 2a 40 00       	mov    edx,0x402ada
  401c08:	48 89 c7             	mov    rdi,rax
  401c0b:	e8 f2 f2 ff ff       	call   400f02 <checkChanges>
  401c10:	48 8b 05 31 26 20 00 	mov    rax,QWORD PTR [rip+0x202631]        # 604248 <pointer+0x48>
  401c17:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401c1e:	48 8b b5 90 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x270]
  401c25:	48 89 d1             	mov    rcx,rdx
  401c28:	ba de 2a 40 00       	mov    edx,0x402ade
  401c2d:	48 89 c7             	mov    rdi,rax
  401c30:	e8 cd f2 ff ff       	call   400f02 <checkChanges>
  401c35:	48 8b 05 14 26 20 00 	mov    rax,QWORD PTR [rip+0x202614]        # 604250 <pointer+0x50>
  401c3c:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401c43:	48 8b b5 98 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x268]
  401c4a:	48 89 d1             	mov    rcx,rdx
  401c4d:	ba e2 2a 40 00       	mov    edx,0x402ae2
  401c52:	48 89 c7             	mov    rdi,rax
  401c55:	e8 a8 f2 ff ff       	call   400f02 <checkChanges>
  401c5a:	48 8b 05 f7 25 20 00 	mov    rax,QWORD PTR [rip+0x2025f7]        # 604258 <pointer+0x58>
  401c61:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401c68:	48 8b b5 a0 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x260]
  401c6f:	48 89 d1             	mov    rcx,rdx
  401c72:	ba e6 2a 40 00       	mov    edx,0x402ae6
  401c77:	48 89 c7             	mov    rdi,rax
  401c7a:	e8 83 f2 ff ff       	call   400f02 <checkChanges>
  401c7f:	48 8b 05 da 25 20 00 	mov    rax,QWORD PTR [rip+0x2025da]        # 604260 <pointer+0x60>
  401c86:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401c8d:	48 8b b5 a8 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x258]
  401c94:	48 89 d1             	mov    rcx,rdx
  401c97:	ba ea 2a 40 00       	mov    edx,0x402aea
  401c9c:	48 89 c7             	mov    rdi,rax
  401c9f:	e8 5e f2 ff ff       	call   400f02 <checkChanges>
  401ca4:	48 8b 05 bd 25 20 00 	mov    rax,QWORD PTR [rip+0x2025bd]        # 604268 <pointer+0x68>
  401cab:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401cb2:	48 8b b5 b0 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x250]
  401cb9:	48 89 d1             	mov    rcx,rdx
  401cbc:	ba ee 2a 40 00       	mov    edx,0x402aee
  401cc1:	48 89 c7             	mov    rdi,rax
  401cc4:	e8 39 f2 ff ff       	call   400f02 <checkChanges>
  401cc9:	48 8b 05 a0 25 20 00 	mov    rax,QWORD PTR [rip+0x2025a0]        # 604270 <pointer+0x70>
  401cd0:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401cd7:	48 8b b5 c0 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x240]
  401cde:	48 89 d1             	mov    rcx,rdx
  401ce1:	ba f2 2a 40 00       	mov    edx,0x402af2
  401ce6:	48 89 c7             	mov    rdi,rax
  401ce9:	e8 14 f2 ff ff       	call   400f02 <checkChanges>
  401cee:	48 8b 05 83 25 20 00 	mov    rax,QWORD PTR [rip+0x202583]        # 604278 <pointer+0x78>
  401cf5:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401cfc:	48 8b b5 b8 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x248]
  401d03:	48 89 d1             	mov    rcx,rdx
  401d06:	ba f6 2a 40 00       	mov    edx,0x402af6
  401d0b:	48 89 c7             	mov    rdi,rax
  401d0e:	e8 ef f1 ff ff       	call   400f02 <checkChanges>
  401d13:	48 8b 05 66 24 20 00 	mov    rax,QWORD PTR [rip+0x202466]        # 604180 <back+0x80>
  401d1a:	48 89 c1             	mov    rcx,rax
  401d1d:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401d24:	48 8b 85 c8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x238]
  401d2b:	48 89 c6             	mov    rsi,rax
  401d2e:	48 89 cf             	mov    rdi,rcx
  401d31:	e8 4c f2 ff ff       	call   400f82 <checkFlags>
  401d36:	48 8b 05 c3 24 20 00 	mov    rax,QWORD PTR [rip+0x2024c3]        # 604200 <pointer>
  401d3d:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401d44:	be bc 2a 40 00       	mov    esi,0x402abc
  401d49:	48 89 c7             	mov    rdi,rax
  401d4c:	e8 23 f8 ff ff       	call   401574 <checkPointed>
  401d51:	48 8b 05 b0 24 20 00 	mov    rax,QWORD PTR [rip+0x2024b0]        # 604208 <pointer+0x8>
  401d58:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401d5f:	be c0 2a 40 00       	mov    esi,0x402ac0
  401d64:	48 89 c7             	mov    rdi,rax
  401d67:	e8 08 f8 ff ff       	call   401574 <checkPointed>
  401d6c:	48 8b 05 9d 24 20 00 	mov    rax,QWORD PTR [rip+0x20249d]        # 604210 <pointer+0x10>
  401d73:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401d7a:	be c4 2a 40 00       	mov    esi,0x402ac4
  401d7f:	48 89 c7             	mov    rdi,rax
  401d82:	e8 ed f7 ff ff       	call   401574 <checkPointed>
  401d87:	48 8b 05 8a 24 20 00 	mov    rax,QWORD PTR [rip+0x20248a]        # 604218 <pointer+0x18>
  401d8e:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401d95:	be c8 2a 40 00       	mov    esi,0x402ac8
  401d9a:	48 89 c7             	mov    rdi,rax
  401d9d:	e8 d2 f7 ff ff       	call   401574 <checkPointed>
  401da2:	48 8b 05 77 24 20 00 	mov    rax,QWORD PTR [rip+0x202477]        # 604220 <pointer+0x20>
  401da9:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401db0:	be cc 2a 40 00       	mov    esi,0x402acc
  401db5:	48 89 c7             	mov    rdi,rax
  401db8:	e8 b7 f7 ff ff       	call   401574 <checkPointed>
  401dbd:	48 8b 05 64 24 20 00 	mov    rax,QWORD PTR [rip+0x202464]        # 604228 <pointer+0x28>
  401dc4:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401dcb:	be d0 2a 40 00       	mov    esi,0x402ad0
  401dd0:	48 89 c7             	mov    rdi,rax
  401dd3:	e8 9c f7 ff ff       	call   401574 <checkPointed>
  401dd8:	48 8b 05 51 24 20 00 	mov    rax,QWORD PTR [rip+0x202451]        # 604230 <pointer+0x30>
  401ddf:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401de6:	be d4 2a 40 00       	mov    esi,0x402ad4
  401deb:	48 89 c7             	mov    rdi,rax
  401dee:	e8 81 f7 ff ff       	call   401574 <checkPointed>
  401df3:	48 8b 05 3e 24 20 00 	mov    rax,QWORD PTR [rip+0x20243e]        # 604238 <pointer+0x38>
  401dfa:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401e01:	be d7 2a 40 00       	mov    esi,0x402ad7
  401e06:	48 89 c7             	mov    rdi,rax
  401e09:	e8 66 f7 ff ff       	call   401574 <checkPointed>
  401e0e:	48 8b 05 2b 24 20 00 	mov    rax,QWORD PTR [rip+0x20242b]        # 604240 <pointer+0x40>
  401e15:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401e1c:	be da 2a 40 00       	mov    esi,0x402ada
  401e21:	48 89 c7             	mov    rdi,rax
  401e24:	e8 4b f7 ff ff       	call   401574 <checkPointed>
  401e29:	48 8b 05 18 24 20 00 	mov    rax,QWORD PTR [rip+0x202418]        # 604248 <pointer+0x48>
  401e30:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401e37:	be de 2a 40 00       	mov    esi,0x402ade
  401e3c:	48 89 c7             	mov    rdi,rax
  401e3f:	e8 30 f7 ff ff       	call   401574 <checkPointed>
  401e44:	48 8b 05 05 24 20 00 	mov    rax,QWORD PTR [rip+0x202405]        # 604250 <pointer+0x50>
  401e4b:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401e52:	be e2 2a 40 00       	mov    esi,0x402ae2
  401e57:	48 89 c7             	mov    rdi,rax
  401e5a:	e8 15 f7 ff ff       	call   401574 <checkPointed>
  401e5f:	48 8b 05 f2 23 20 00 	mov    rax,QWORD PTR [rip+0x2023f2]        # 604258 <pointer+0x58>
  401e66:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401e6d:	be e6 2a 40 00       	mov    esi,0x402ae6
  401e72:	48 89 c7             	mov    rdi,rax
  401e75:	e8 fa f6 ff ff       	call   401574 <checkPointed>
  401e7a:	48 8b 05 df 23 20 00 	mov    rax,QWORD PTR [rip+0x2023df]        # 604260 <pointer+0x60>
  401e81:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401e88:	be ea 2a 40 00       	mov    esi,0x402aea
  401e8d:	48 89 c7             	mov    rdi,rax
  401e90:	e8 df f6 ff ff       	call   401574 <checkPointed>
  401e95:	48 8b 05 cc 23 20 00 	mov    rax,QWORD PTR [rip+0x2023cc]        # 604268 <pointer+0x68>
  401e9c:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401ea3:	be ee 2a 40 00       	mov    esi,0x402aee
  401ea8:	48 89 c7             	mov    rdi,rax
  401eab:	e8 c4 f6 ff ff       	call   401574 <checkPointed>
  401eb0:	48 8b 05 c9 22 20 00 	mov    rax,QWORD PTR [rip+0x2022c9]        # 604180 <back+0x80>
  401eb7:	48 89 c7             	mov    rdi,rax
  401eba:	48 8b 15 b7 23 20 00 	mov    rdx,QWORD PTR [rip+0x2023b7]        # 604278 <pointer+0x78>
  401ec1:	48 8b 05 b8 23 20 00 	mov    rax,QWORD PTR [rip+0x2023b8]        # 604280 <pointer+0x80>
  401ec8:	48 8b 8d b8 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x248]
  401ecf:	48 8d b5 e0 fd ff ff 	lea    rsi,[rbp-0x220]
  401ed6:	49 89 f8             	mov    r8,rdi
  401ed9:	48 89 c7             	mov    rdi,rax
  401edc:	e8 52 f7 ff ff       	call   401633 <checkStack>
  401ee1:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401ee8:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
  401eef:	48 89 d6             	mov    rsi,rdx
  401ef2:	48 89 c7             	mov    rdi,rax
  401ef5:	e8 8a f8 ff ff       	call   401784 <checkRip>
  401efa:	48 8d 85 e0 fd ff ff 	lea    rax,[rbp-0x220]
  401f01:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  401f08:	48 89 c2             	mov    rdx,rax
  401f0b:	b8 00 00 00 00       	mov    eax,0x0
  401f10:	48 89 d7             	mov    rdi,rdx
  401f13:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  401f15:	48 89 c8             	mov    rax,rcx
  401f18:	48 f7 d0             	not    rax
  401f1b:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  401f1f:	48 8d 85 e0 fd ff ff 	lea    rax,[rbp-0x220]
  401f26:	48 01 d0             	add    rax,rdx
  401f29:	66 c7 00 0a 00       	mov    WORD PTR [rax],0xa
  401f2e:	48 8b 05 bb 21 20 00 	mov    rax,QWORD PTR [rip+0x2021bb]        # 6040f0 <results>
  401f35:	48 8d 95 e0 fd ff ff 	lea    rdx,[rbp-0x220]
  401f3c:	48 89 d6             	mov    rsi,rdx
  401f3f:	48 89 c7             	mov    rdi,rax
  401f42:	e8 c9 e9 ff ff       	call   400910 <strcat@plt>
  401f47:	48 8d 85 e0 fd ff ff 	lea    rax,[rbp-0x220]
  401f4e:	48 89 c7             	mov    rdi,rax
  401f51:	e8 ea e8 ff ff       	call   400840 <strlen@plt>
  401f56:	89 c2                	mov    edx,eax
  401f58:	8b 05 82 22 20 00    	mov    eax,DWORD PTR [rip+0x202282]        # 6041e0 <lengthResults>
  401f5e:	01 d0                	add    eax,edx
  401f60:	89 05 7a 22 20 00    	mov    DWORD PTR [rip+0x20227a],eax        # 6041e0 <lengthResults>
  401f66:	8b 05 74 22 20 00    	mov    eax,DWORD PTR [rip+0x202274]        # 6041e0 <lengthResults>
  401f6c:	3d 80 3e 00 00       	cmp    eax,0x3e80
  401f71:	0f 8e 88 00 00 00    	jle    401fff <handlerFunc+0x7ab>
  401f77:	48 8b 15 72 21 20 00 	mov    rdx,QWORD PTR [rip+0x202172]        # 6040f0 <results>
  401f7e:	48 8b 05 03 23 20 00 	mov    rax,QWORD PTR [rip+0x202303]        # 604288 <fout>
  401f85:	be fa 2a 40 00       	mov    esi,0x402afa
  401f8a:	48 89 c7             	mov    rdi,rax
  401f8d:	b8 00 00 00 00       	mov    eax,0x0
  401f92:	e8 29 e9 ff ff       	call   4008c0 <fprintf@plt>
  401f97:	89 85 3c fd ff ff    	mov    DWORD PTR [rbp-0x2c4],eax
  401f9d:	8b 85 3c fd ff ff    	mov    eax,DWORD PTR [rbp-0x2c4]
  401fa3:	48 63 d0             	movsxd rdx,eax
  401fa6:	48 8b 05 1b 22 20 00 	mov    rax,QWORD PTR [rip+0x20221b]        # 6041c8 <allPrintedBytes>
  401fad:	48 01 d0             	add    rax,rdx
  401fb0:	48 89 05 11 22 20 00 	mov    QWORD PTR [rip+0x202211],rax        # 6041c8 <allPrintedBytes>
  401fb7:	48 8b 05 32 21 20 00 	mov    rax,QWORD PTR [rip+0x202132]        # 6040f0 <results>
  401fbe:	48 89 c7             	mov    rdi,rax
  401fc1:	e8 3a e8 ff ff       	call   400800 <free@plt>
  401fc6:	48 c7 05 1f 21 20 00 	mov    QWORD PTR [rip+0x20211f],0x0        # 6040f0 <results>
  401fcd:	00 00 00 00 
  401fd1:	be 01 00 00 00       	mov    esi,0x1
  401fd6:	bf 00 00 00 08       	mov    edi,0x8000000
  401fdb:	e8 d0 e8 ff ff       	call   4008b0 <calloc@plt>
  401fe0:	48 89 05 09 21 20 00 	mov    QWORD PTR [rip+0x202109],rax        # 6040f0 <results>
  401fe7:	48 8b 05 02 21 20 00 	mov    rax,QWORD PTR [rip+0x202102]        # 6040f0 <results>
  401fee:	48 83 c0 01          	add    rax,0x1
  401ff2:	c6 00 00             	mov    BYTE PTR [rax],0x0
  401ff5:	c7 05 e1 21 20 00 00 	mov    DWORD PTR [rip+0x2021e1],0x0        # 6041e0 <lengthResults>
  401ffc:	00 00 00 
  401fff:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  402006:	48 8b 80 b0 00 00 00 	mov    rax,QWORD PTR [rax+0xb0]
  40200d:	80 e4 fe             	and    ah,0xfe
  402010:	48 89 c2             	mov    rdx,rax
  402013:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  40201a:	48 89 90 b0 00 00 00 	mov    QWORD PTR [rax+0xb0],rdx
  402021:	ba 2b 28 40 00       	mov    edx,0x40282b
  402026:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  40202d:	48 89 90 a8 00 00 00 	mov    QWORD PTR [rax+0xa8],rdx
  402034:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402038:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  40203f:	00 00 
  402041:	74 05                	je     402048 <handlerFunc+0x7f4>
  402043:	e8 08 e8 ff ff       	call   400850 <__stack_chk_fail@plt>
  402048:	48 81 c4 e8 02 00 00 	add    rsp,0x2e8
  40204f:	5b                   	pop    rbx
  402050:	5d                   	pop    rbp
  402051:	c3                   	ret    

0000000000402052 <main>:
  402052:	55                   	push   rbp
  402053:	48 89 e5             	mov    rbp,rsp
  402056:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
  40205d:	89 bd 2c ff ff ff    	mov    DWORD PTR [rbp-0xd4],edi
  402063:	48 89 b5 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rsi
  40206a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402071:	00 00 
  402073:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402077:	31 c0                	xor    eax,eax
  402079:	83 bd 2c ff ff ff 01 	cmp    DWORD PTR [rbp-0xd4],0x1
  402080:	7f 28                	jg     4020aa <main+0x58>
  402082:	bf fd 2a 40 00       	mov    edi,0x402afd
  402087:	e8 84 e7 ff ff       	call   400810 <puts@plt>
  40208c:	bf 20 2b 40 00       	mov    edi,0x402b20
  402091:	e8 7a e7 ff ff       	call   400810 <puts@plt>
  402096:	bf 70 2b 40 00       	mov    edi,0x402b70
  40209b:	e8 70 e7 ff ff       	call   400810 <puts@plt>
  4020a0:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4020a5:	e9 56 08 00 00       	jmp    402900 <resume+0xd5>
  4020aa:	48 c7 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],0x401854
  4020b1:	54 18 40 00 
  4020b5:	c7 45 d8 04 00 00 08 	mov    DWORD PTR [rbp-0x28],0x8000004
  4020bc:	48 8d 85 50 ff ff ff 	lea    rax,[rbp-0xb0]
  4020c3:	48 83 c0 08          	add    rax,0x8
  4020c7:	48 89 c7             	mov    rdi,rax
  4020ca:	e8 01 e8 ff ff       	call   4008d0 <sigfillset@plt>
  4020cf:	48 8d 85 50 ff ff ff 	lea    rax,[rbp-0xb0]
  4020d6:	ba 00 00 00 00       	mov    edx,0x0
  4020db:	48 89 c6             	mov    rsi,rax
  4020de:	bf 04 00 00 00       	mov    edi,0x4
  4020e3:	e8 38 e7 ff ff       	call   400820 <sigaction@plt>
  4020e8:	48 8d 85 50 ff ff ff 	lea    rax,[rbp-0xb0]
  4020ef:	ba 00 00 00 00       	mov    edx,0x0
  4020f4:	48 89 c6             	mov    rsi,rax
  4020f7:	bf 0b 00 00 00       	mov    edi,0xb
  4020fc:	e8 1f e7 ff ff       	call   400820 <sigaction@plt>
  402101:	48 8d 85 50 ff ff ff 	lea    rax,[rbp-0xb0]
  402108:	ba 00 00 00 00       	mov    edx,0x0
  40210d:	48 89 c6             	mov    rsi,rax
  402110:	bf 08 00 00 00       	mov    edi,0x8
  402115:	e8 06 e7 ff ff       	call   400820 <sigaction@plt>
  40211a:	48 8d 85 50 ff ff ff 	lea    rax,[rbp-0xb0]
  402121:	ba 00 00 00 00       	mov    edx,0x0
  402126:	48 89 c6             	mov    rsi,rax
  402129:	bf 07 00 00 00       	mov    edi,0x7
  40212e:	e8 ed e6 ff ff       	call   400820 <sigaction@plt>
  402133:	48 8d 85 50 ff ff ff 	lea    rax,[rbp-0xb0]
  40213a:	ba 00 00 00 00       	mov    edx,0x0
  40213f:	48 89 c6             	mov    rsi,rax
  402142:	bf 05 00 00 00       	mov    edi,0x5
  402147:	e8 d4 e6 ff ff       	call   400820 <sigaction@plt>
  40214c:	be 01 00 00 00       	mov    esi,0x1
  402151:	bf 00 00 00 20       	mov    edi,0x20000000
  402156:	e8 55 e7 ff ff       	call   4008b0 <calloc@plt>
  40215b:	48 89 05 86 1f 20 00 	mov    QWORD PTR [rip+0x201f86],rax        # 6040e8 <inputInstructions>
  402162:	be 01 00 00 00       	mov    esi,0x1
  402167:	bf 00 00 00 08       	mov    edi,0x8000000
  40216c:	e8 3f e7 ff ff       	call   4008b0 <calloc@plt>
  402171:	48 89 05 78 1f 20 00 	mov    QWORD PTR [rip+0x201f78],rax        # 6040f0 <results>
  402178:	c7 05 5e 20 20 00 00 	mov    DWORD PTR [rip+0x20205e],0x0        # 6041e0 <lengthResults>
  40217f:	00 00 00 
  402182:	48 c7 05 3b 20 20 00 	mov    QWORD PTR [rip+0x20203b],0x0        # 6041c8 <allPrintedBytes>
  402189:	00 00 00 00 
  40218d:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
  402194:	48 83 c0 08          	add    rax,0x8
  402198:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40219b:	be 97 2b 40 00       	mov    esi,0x402b97
  4021a0:	48 89 c7             	mov    rdi,rax
  4021a3:	e8 48 e7 ff ff       	call   4008f0 <fopen@plt>
  4021a8:	48 89 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rax
  4021af:	48 83 bd 40 ff ff ff 	cmp    QWORD PTR [rbp-0xc0],0x0
  4021b6:	00 
  4021b7:	75 14                	jne    4021cd <main+0x17b>
  4021b9:	bf 99 2b 40 00       	mov    edi,0x402b99
  4021be:	e8 3d e7 ff ff       	call   400900 <perror@plt>
  4021c3:	b8 00 00 00 00       	mov    eax,0x0
  4021c8:	e9 33 07 00 00       	jmp    402900 <resume+0xd5>
  4021cd:	be b1 2b 40 00       	mov    esi,0x402bb1
  4021d2:	bf b3 2b 40 00       	mov    edi,0x402bb3
  4021d7:	e8 14 e7 ff ff       	call   4008f0 <fopen@plt>
  4021dc:	48 89 05 a5 20 20 00 	mov    QWORD PTR [rip+0x2020a5],rax        # 604288 <fout>
  4021e3:	48 8b 05 9e 20 20 00 	mov    rax,QWORD PTR [rip+0x20209e]        # 604288 <fout>
  4021ea:	48 85 c0             	test   rax,rax
  4021ed:	75 14                	jne    402203 <main+0x1b1>
  4021ef:	bf c2 2b 40 00       	mov    edi,0x402bc2
  4021f4:	e8 07 e7 ff ff       	call   400900 <perror@plt>
  4021f9:	b8 00 00 00 00       	mov    eax,0x0
  4021fe:	e9 fd 06 00 00       	jmp    402900 <resume+0xd5>
  402203:	48 8b 05 de 1e 20 00 	mov    rax,QWORD PTR [rip+0x201ede]        # 6040e8 <inputInstructions>
  40220a:	48 8b 95 40 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc0]
  402211:	48 89 d1             	mov    rcx,rdx
  402214:	ba 00 00 00 20       	mov    edx,0x20000000
  402219:	be 01 00 00 00       	mov    esi,0x1
  40221e:	48 89 c7             	mov    rdi,rax
  402221:	e8 0a e6 ff ff       	call   400830 <fread@plt>
  402226:	48 89 05 a3 1f 20 00 	mov    QWORD PTR [rip+0x201fa3],rax        # 6041d0 <readedBytes>
  40222d:	c6 45 f0 55          	mov    BYTE PTR [rbp-0x10],0x55
  402231:	c6 45 f1 55          	mov    BYTE PTR [rbp-0xf],0x55
  402235:	c6 45 f2 55          	mov    BYTE PTR [rbp-0xe],0x55
  402239:	c6 45 f3 55          	mov    BYTE PTR [rbp-0xd],0x55
  40223d:	c6 45 f4 55          	mov    BYTE PTR [rbp-0xc],0x55
  402241:	c6 45 f5 55          	mov    BYTE PTR [rbp-0xb],0x55
  402245:	c6 45 f6 55          	mov    BYTE PTR [rbp-0xa],0x55
  402249:	c6 45 f7 55          	mov    BYTE PTR [rbp-0x9],0x55
  40224d:	c7 85 34 ff ff ff 00 	mov    DWORD PTR [rbp-0xcc],0x0
  402254:	00 00 00 
  402257:	41 b9 00 00 00 00    	mov    r9d,0x0
  40225d:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  402263:	b9 22 00 00 00       	mov    ecx,0x22
  402268:	ba 07 00 00 00       	mov    edx,0x7
  40226d:	be 1e 00 00 00       	mov    esi,0x1e
  402272:	bf 00 00 00 00       	mov    edi,0x0
  402277:	e8 e4 e5 ff ff       	call   400860 <mmap@plt>
  40227c:	48 89 05 55 1f 20 00 	mov    QWORD PTR [rip+0x201f55],rax        # 6041d8 <buffer>
  402283:	41 b9 00 00 00 00    	mov    r9d,0x0
  402289:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  40228f:	b9 22 00 00 00       	mov    ecx,0x22
  402294:	ba 07 00 00 00       	mov    edx,0x7
  402299:	be 08 00 00 00       	mov    esi,0x8
  40229e:	bf 00 00 00 00       	mov    edi,0x0
  4022a3:	e8 b8 e5 ff ff       	call   400860 <mmap@plt>
  4022a8:	48 89 05 51 1f 20 00 	mov    QWORD PTR [rip+0x201f51],rax        # 604200 <pointer>
  4022af:	41 b9 00 00 00 00    	mov    r9d,0x0
  4022b5:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  4022bb:	b9 22 00 00 00       	mov    ecx,0x22
  4022c0:	ba 07 00 00 00       	mov    edx,0x7
  4022c5:	be 08 00 00 00       	mov    esi,0x8
  4022ca:	bf 00 00 00 00       	mov    edi,0x0
  4022cf:	e8 8c e5 ff ff       	call   400860 <mmap@plt>
  4022d4:	48 89 05 2d 1f 20 00 	mov    QWORD PTR [rip+0x201f2d],rax        # 604208 <pointer+0x8>
  4022db:	41 b9 00 00 00 00    	mov    r9d,0x0
  4022e1:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  4022e7:	b9 22 00 00 00       	mov    ecx,0x22
  4022ec:	ba 07 00 00 00       	mov    edx,0x7
  4022f1:	be 08 00 00 00       	mov    esi,0x8
  4022f6:	bf 00 00 00 00       	mov    edi,0x0
  4022fb:	e8 60 e5 ff ff       	call   400860 <mmap@plt>
  402300:	48 89 05 09 1f 20 00 	mov    QWORD PTR [rip+0x201f09],rax        # 604210 <pointer+0x10>
  402307:	41 b9 00 00 00 00    	mov    r9d,0x0
  40230d:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  402313:	b9 22 00 00 00       	mov    ecx,0x22
  402318:	ba 07 00 00 00       	mov    edx,0x7
  40231d:	be 08 00 00 00       	mov    esi,0x8
  402322:	bf 00 00 00 00       	mov    edi,0x0
  402327:	e8 34 e5 ff ff       	call   400860 <mmap@plt>
  40232c:	48 89 05 e5 1e 20 00 	mov    QWORD PTR [rip+0x201ee5],rax        # 604218 <pointer+0x18>
  402333:	41 b9 00 00 00 00    	mov    r9d,0x0
  402339:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  40233f:	b9 22 00 00 00       	mov    ecx,0x22
  402344:	ba 07 00 00 00       	mov    edx,0x7
  402349:	be 08 00 00 00       	mov    esi,0x8
  40234e:	bf 00 00 00 00       	mov    edi,0x0
  402353:	e8 08 e5 ff ff       	call   400860 <mmap@plt>
  402358:	48 89 05 c1 1e 20 00 	mov    QWORD PTR [rip+0x201ec1],rax        # 604220 <pointer+0x20>
  40235f:	41 b9 00 00 00 00    	mov    r9d,0x0
  402365:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  40236b:	b9 22 00 00 00       	mov    ecx,0x22
  402370:	ba 07 00 00 00       	mov    edx,0x7
  402375:	be 08 00 00 00       	mov    esi,0x8
  40237a:	bf 00 00 00 00       	mov    edi,0x0
  40237f:	e8 dc e4 ff ff       	call   400860 <mmap@plt>
  402384:	48 89 05 9d 1e 20 00 	mov    QWORD PTR [rip+0x201e9d],rax        # 604228 <pointer+0x28>
  40238b:	41 b9 00 00 00 00    	mov    r9d,0x0
  402391:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  402397:	b9 22 00 00 00       	mov    ecx,0x22
  40239c:	ba 07 00 00 00       	mov    edx,0x7
  4023a1:	be 08 00 00 00       	mov    esi,0x8
  4023a6:	bf 00 00 00 00       	mov    edi,0x0
  4023ab:	e8 b0 e4 ff ff       	call   400860 <mmap@plt>
  4023b0:	48 89 05 79 1e 20 00 	mov    QWORD PTR [rip+0x201e79],rax        # 604230 <pointer+0x30>
  4023b7:	41 b9 00 00 00 00    	mov    r9d,0x0
  4023bd:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  4023c3:	b9 22 00 00 00       	mov    ecx,0x22
  4023c8:	ba 07 00 00 00       	mov    edx,0x7
  4023cd:	be 08 00 00 00       	mov    esi,0x8
  4023d2:	bf 00 00 00 00       	mov    edi,0x0
  4023d7:	e8 84 e4 ff ff       	call   400860 <mmap@plt>
  4023dc:	48 89 05 55 1e 20 00 	mov    QWORD PTR [rip+0x201e55],rax        # 604238 <pointer+0x38>
  4023e3:	41 b9 00 00 00 00    	mov    r9d,0x0
  4023e9:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  4023ef:	b9 22 00 00 00       	mov    ecx,0x22
  4023f4:	ba 07 00 00 00       	mov    edx,0x7
  4023f9:	be 08 00 00 00       	mov    esi,0x8
  4023fe:	bf 00 00 00 00       	mov    edi,0x0
  402403:	e8 58 e4 ff ff       	call   400860 <mmap@plt>
  402408:	48 89 05 31 1e 20 00 	mov    QWORD PTR [rip+0x201e31],rax        # 604240 <pointer+0x40>
  40240f:	41 b9 00 00 00 00    	mov    r9d,0x0
  402415:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  40241b:	b9 22 00 00 00       	mov    ecx,0x22
  402420:	ba 07 00 00 00       	mov    edx,0x7
  402425:	be 08 00 00 00       	mov    esi,0x8
  40242a:	bf 00 00 00 00       	mov    edi,0x0
  40242f:	e8 2c e4 ff ff       	call   400860 <mmap@plt>
  402434:	48 89 05 0d 1e 20 00 	mov    QWORD PTR [rip+0x201e0d],rax        # 604248 <pointer+0x48>
  40243b:	41 b9 00 00 00 00    	mov    r9d,0x0
  402441:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  402447:	b9 22 00 00 00       	mov    ecx,0x22
  40244c:	ba 07 00 00 00       	mov    edx,0x7
  402451:	be 08 00 00 00       	mov    esi,0x8
  402456:	bf 00 00 00 00       	mov    edi,0x0
  40245b:	e8 00 e4 ff ff       	call   400860 <mmap@plt>
  402460:	48 89 05 e9 1d 20 00 	mov    QWORD PTR [rip+0x201de9],rax        # 604250 <pointer+0x50>
  402467:	41 b9 00 00 00 00    	mov    r9d,0x0
  40246d:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  402473:	b9 22 00 00 00       	mov    ecx,0x22
  402478:	ba 07 00 00 00       	mov    edx,0x7
  40247d:	be 08 00 00 00       	mov    esi,0x8
  402482:	bf 00 00 00 00       	mov    edi,0x0
  402487:	e8 d4 e3 ff ff       	call   400860 <mmap@plt>
  40248c:	48 89 05 c5 1d 20 00 	mov    QWORD PTR [rip+0x201dc5],rax        # 604258 <pointer+0x58>
  402493:	41 b9 00 00 00 00    	mov    r9d,0x0
  402499:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  40249f:	b9 22 00 00 00       	mov    ecx,0x22
  4024a4:	ba 07 00 00 00       	mov    edx,0x7
  4024a9:	be 08 00 00 00       	mov    esi,0x8
  4024ae:	bf 00 00 00 00       	mov    edi,0x0
  4024b3:	e8 a8 e3 ff ff       	call   400860 <mmap@plt>
  4024b8:	48 89 05 a1 1d 20 00 	mov    QWORD PTR [rip+0x201da1],rax        # 604260 <pointer+0x60>
  4024bf:	41 b9 00 00 00 00    	mov    r9d,0x0
  4024c5:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  4024cb:	b9 22 00 00 00       	mov    ecx,0x22
  4024d0:	ba 07 00 00 00       	mov    edx,0x7
  4024d5:	be 08 00 00 00       	mov    esi,0x8
  4024da:	bf 00 00 00 00       	mov    edi,0x0
  4024df:	e8 7c e3 ff ff       	call   400860 <mmap@plt>
  4024e4:	48 89 05 7d 1d 20 00 	mov    QWORD PTR [rip+0x201d7d],rax        # 604268 <pointer+0x68>
  4024eb:	41 b9 00 00 00 00    	mov    r9d,0x0
  4024f1:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  4024f7:	b9 22 00 00 00       	mov    ecx,0x22
  4024fc:	ba 07 00 00 00       	mov    edx,0x7
  402501:	be 00 10 00 00       	mov    esi,0x1000
  402506:	bf 00 00 00 00       	mov    edi,0x0
  40250b:	e8 50 e3 ff ff       	call   400860 <mmap@plt>
  402510:	48 89 05 69 1d 20 00 	mov    QWORD PTR [rip+0x201d69],rax        # 604280 <pointer+0x80>
  402517:	48 8b 05 62 1d 20 00 	mov    rax,QWORD PTR [rip+0x201d62]        # 604280 <pointer+0x80>
  40251e:	48 05 00 04 00 00    	add    rax,0x400
  402524:	48 89 05 55 1d 20 00 	mov    QWORD PTR [rip+0x201d55],rax        # 604280 <pointer+0x80>
  40252b:	48 8b 05 4e 1d 20 00 	mov    rax,QWORD PTR [rip+0x201d4e]        # 604280 <pointer+0x80>
  402532:	48 83 e8 80          	sub    rax,0xffffffffffffff80
  402536:	48 89 05 33 1d 20 00 	mov    QWORD PTR [rip+0x201d33],rax        # 604270 <pointer+0x70>
  40253d:	48 8b 05 3c 1d 20 00 	mov    rax,QWORD PTR [rip+0x201d3c]        # 604280 <pointer+0x80>
  402544:	48 89 05 2d 1d 20 00 	mov    QWORD PTR [rip+0x201d2d],rax        # 604278 <pointer+0x78>
  40254b:	41 b9 00 00 00 00    	mov    r9d,0x0
  402551:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  402557:	b9 22 00 00 00       	mov    ecx,0x22
  40255c:	ba 07 00 00 00       	mov    edx,0x7
  402561:	be 00 10 00 00       	mov    esi,0x1000
  402566:	bf 00 00 00 00       	mov    edi,0x0
  40256b:	e8 f0 e2 ff ff       	call   400860 <mmap@plt>
  402570:	48 89 05 49 1c 20 00 	mov    QWORD PTR [rip+0x201c49],rax        # 6041c0 <referenceStack>
  402577:	c7 85 38 ff ff ff 00 	mov    DWORD PTR [rbp-0xc8],0x0
  40257e:	00 00 00 
  402581:	eb 20                	jmp    4025a3 <main+0x551>
  402583:	48 8b 15 36 1c 20 00 	mov    rdx,QWORD PTR [rip+0x201c36]        # 6041c0 <referenceStack>
  40258a:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
  402590:	48 98                	cdqe   
  402592:	48 01 c2             	add    rdx,rax
  402595:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402599:	48 89 02             	mov    QWORD PTR [rdx],rax
  40259c:	83 85 38 ff ff ff 08 	add    DWORD PTR [rbp-0xc8],0x8
  4025a3:	81 bd 38 ff ff ff ff 	cmp    DWORD PTR [rbp-0xc8],0xfff
  4025aa:	0f 00 00 
  4025ad:	7e d4                	jle    402583 <main+0x531>
  4025af:	8b 8d 34 ff ff ff    	mov    ecx,DWORD PTR [rbp-0xcc]
  4025b5:	ba 73 b2 e7 45       	mov    edx,0x45e7b273
  4025ba:	89 c8                	mov    eax,ecx
  4025bc:	f7 ea                	imul   edx
  4025be:	c1 fa 0d             	sar    edx,0xd
  4025c1:	89 c8                	mov    eax,ecx
  4025c3:	c1 f8 1f             	sar    eax,0x1f
  4025c6:	29 c2                	sub    edx,eax
  4025c8:	89 d0                	mov    eax,edx
  4025ca:	69 c0 30 75 00 00    	imul   eax,eax,0x7530
  4025d0:	29 c1                	sub    ecx,eax
  4025d2:	89 c8                	mov    eax,ecx
  4025d4:	85 c0                	test   eax,eax
  4025d6:	75 1f                	jne    4025f7 <main+0x5a5>
  4025d8:	48 8b 05 09 1c 20 00 	mov    rax,QWORD PTR [rip+0x201c09]        # 6041e8 <pointerInstructions>
  4025df:	8b 95 34 ff ff ff    	mov    edx,DWORD PTR [rbp-0xcc]
  4025e5:	48 89 c6             	mov    rsi,rax
  4025e8:	bf e0 2b 40 00       	mov    edi,0x402be0
  4025ed:	b8 00 00 00 00       	mov    eax,0x0
  4025f2:	e8 79 e2 ff ff       	call   400870 <printf@plt>
  4025f7:	48 8b 05 d2 1b 20 00 	mov    rax,QWORD PTR [rip+0x201bd2]        # 6041d0 <readedBytes>
  4025fe:	48 8b 15 e3 1b 20 00 	mov    rdx,QWORD PTR [rip+0x201be3]        # 6041e8 <pointerInstructions>
  402605:	48 39 d0             	cmp    rax,rdx
  402608:	0f 86 93 02 00 00    	jbe    4028a1 <resume+0x76>
  40260e:	83 85 34 ff ff ff 01 	add    DWORD PTR [rbp-0xcc],0x1
  402615:	b8 00 00 00 00       	mov    eax,0x0
  40261a:	e8 aa e5 ff ff       	call   400bc9 <getInstr>
  40261f:	48 89 85 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rax
  402626:	48 8b 05 ab 1b 20 00 	mov    rax,QWORD PTR [rip+0x201bab]        # 6041d8 <buffer>
  40262d:	48 8b 8d 48 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xb8]
  402634:	ba 1e 00 00 00       	mov    edx,0x1e
  402639:	48 89 ce             	mov    rsi,rcx
  40263c:	48 89 c7             	mov    rdi,rax
  40263f:	e8 9c e2 ff ff       	call   4008e0 <memcpy@plt>
  402644:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  40264b:	48 89 c7             	mov    rdi,rax
  40264e:	e8 ad e1 ff ff       	call   400800 <free@plt>
  402653:	48 8b 05 a6 1b 20 00 	mov    rax,QWORD PTR [rip+0x201ba6]        # 604200 <pointer>
  40265a:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  40265e:	48 89 10             	mov    QWORD PTR [rax],rdx
  402661:	48 8b 05 a0 1b 20 00 	mov    rax,QWORD PTR [rip+0x201ba0]        # 604208 <pointer+0x8>
  402668:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  40266c:	48 89 10             	mov    QWORD PTR [rax],rdx
  40266f:	48 8b 05 9a 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b9a]        # 604210 <pointer+0x10>
  402676:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  40267a:	48 89 10             	mov    QWORD PTR [rax],rdx
  40267d:	48 8b 05 94 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b94]        # 604218 <pointer+0x18>
  402684:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  402688:	48 89 10             	mov    QWORD PTR [rax],rdx
  40268b:	48 8b 05 8e 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b8e]        # 604220 <pointer+0x20>
  402692:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  402696:	48 89 10             	mov    QWORD PTR [rax],rdx
  402699:	48 8b 05 88 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b88]        # 604228 <pointer+0x28>
  4026a0:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  4026a4:	48 89 10             	mov    QWORD PTR [rax],rdx
  4026a7:	48 8b 05 82 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b82]        # 604230 <pointer+0x30>
  4026ae:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  4026b2:	48 89 10             	mov    QWORD PTR [rax],rdx
  4026b5:	48 8b 05 7c 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b7c]        # 604238 <pointer+0x38>
  4026bc:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  4026c0:	48 89 10             	mov    QWORD PTR [rax],rdx
  4026c3:	48 8b 05 76 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b76]        # 604240 <pointer+0x40>
  4026ca:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  4026ce:	48 89 10             	mov    QWORD PTR [rax],rdx
  4026d1:	48 8b 05 70 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b70]        # 604248 <pointer+0x48>
  4026d8:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  4026dc:	48 89 10             	mov    QWORD PTR [rax],rdx
  4026df:	48 8b 05 6a 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b6a]        # 604250 <pointer+0x50>
  4026e6:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  4026ea:	48 89 10             	mov    QWORD PTR [rax],rdx
  4026ed:	48 8b 05 64 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b64]        # 604258 <pointer+0x58>
  4026f4:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  4026f8:	48 89 10             	mov    QWORD PTR [rax],rdx
  4026fb:	48 8b 05 5e 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b5e]        # 604260 <pointer+0x60>
  402702:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  402706:	48 89 10             	mov    QWORD PTR [rax],rdx
  402709:	48 8b 05 58 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b58]        # 604268 <pointer+0x68>
  402710:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  402714:	48 89 10             	mov    QWORD PTR [rax],rdx
  402717:	48 8b 0d a2 1a 20 00 	mov    rcx,QWORD PTR [rip+0x201aa2]        # 6041c0 <referenceStack>
  40271e:	48 8b 05 5b 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b5b]        # 604280 <pointer+0x80>
  402725:	ba 00 01 00 00       	mov    edx,0x100
  40272a:	48 89 ce             	mov    rsi,rcx
  40272d:	48 89 c7             	mov    rdi,rax
  402730:	e8 ab e1 ff ff       	call   4008e0 <memcpy@plt>
  402735:	48 89 05 c4 19 20 00 	mov    QWORD PTR [rip+0x2019c4],rax        # 604100 <back>
  40273c:	48 89 1d cd 19 20 00 	mov    QWORD PTR [rip+0x2019cd],rbx        # 604110 <back+0x10>
  402743:	48 89 0d be 19 20 00 	mov    QWORD PTR [rip+0x2019be],rcx        # 604108 <back+0x8>
  40274a:	48 89 15 c7 19 20 00 	mov    QWORD PTR [rip+0x2019c7],rdx        # 604118 <back+0x18>
  402751:	48 89 35 c8 19 20 00 	mov    QWORD PTR [rip+0x2019c8],rsi        # 604120 <back+0x20>
  402758:	48 89 3d c9 19 20 00 	mov    QWORD PTR [rip+0x2019c9],rdi        # 604128 <back+0x28>
  40275f:	4c 89 05 da 19 20 00 	mov    QWORD PTR [rip+0x2019da],r8        # 604140 <back+0x40>
  402766:	4c 89 0d db 19 20 00 	mov    QWORD PTR [rip+0x2019db],r9        # 604148 <back+0x48>
  40276d:	4c 89 15 dc 19 20 00 	mov    QWORD PTR [rip+0x2019dc],r10        # 604150 <back+0x50>
  402774:	4c 89 1d dd 19 20 00 	mov    QWORD PTR [rip+0x2019dd],r11        # 604158 <back+0x58>
  40277b:	4c 89 25 de 19 20 00 	mov    QWORD PTR [rip+0x2019de],r12        # 604160 <back+0x60>
  402782:	4c 89 2d df 19 20 00 	mov    QWORD PTR [rip+0x2019df],r13        # 604168 <back+0x68>
  402789:	4c 89 35 e0 19 20 00 	mov    QWORD PTR [rip+0x2019e0],r14        # 604170 <back+0x70>
  402790:	4c 89 3d e1 19 20 00 	mov    QWORD PTR [rip+0x2019e1],r15        # 604178 <back+0x78>
  402797:	9c                   	pushf  
  402798:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  40279c:	48 89 05 dd 19 20 00 	mov    QWORD PTR [rip+0x2019dd],rax        # 604180 <back+0x80>
  4027a3:	48 89 2d 86 19 20 00 	mov    QWORD PTR [rip+0x201986],rbp        # 604130 <back+0x30>
  4027aa:	48 89 25 87 19 20 00 	mov    QWORD PTR [rip+0x201987],rsp        # 604138 <back+0x38>
  4027b1:	48 8b 05 48 1a 20 00 	mov    rax,QWORD PTR [rip+0x201a48]        # 604200 <pointer>
  4027b8:	48 8b 1d 49 1a 20 00 	mov    rbx,QWORD PTR [rip+0x201a49]        # 604208 <pointer+0x8>
  4027bf:	48 8b 0d 4a 1a 20 00 	mov    rcx,QWORD PTR [rip+0x201a4a]        # 604210 <pointer+0x10>
  4027c6:	48 8b 15 4b 1a 20 00 	mov    rdx,QWORD PTR [rip+0x201a4b]        # 604218 <pointer+0x18>
  4027cd:	48 8b 35 4c 1a 20 00 	mov    rsi,QWORD PTR [rip+0x201a4c]        # 604220 <pointer+0x20>
  4027d4:	48 8b 3d 4d 1a 20 00 	mov    rdi,QWORD PTR [rip+0x201a4d]        # 604228 <pointer+0x28>
  4027db:	4c 8b 05 4e 1a 20 00 	mov    r8,QWORD PTR [rip+0x201a4e]        # 604230 <pointer+0x30>
  4027e2:	4c 8b 0d 4f 1a 20 00 	mov    r9,QWORD PTR [rip+0x201a4f]        # 604238 <pointer+0x38>
  4027e9:	4c 8b 15 50 1a 20 00 	mov    r10,QWORD PTR [rip+0x201a50]        # 604240 <pointer+0x40>
  4027f0:	4c 8b 1d 51 1a 20 00 	mov    r11,QWORD PTR [rip+0x201a51]        # 604248 <pointer+0x48>
  4027f7:	4c 8b 25 52 1a 20 00 	mov    r12,QWORD PTR [rip+0x201a52]        # 604250 <pointer+0x50>
  4027fe:	4c 8b 2d 53 1a 20 00 	mov    r13,QWORD PTR [rip+0x201a53]        # 604258 <pointer+0x58>
  402805:	4c 8b 35 54 1a 20 00 	mov    r14,QWORD PTR [rip+0x201a54]        # 604260 <pointer+0x60>
  40280c:	4c 8b 3d 55 1a 20 00 	mov    r15,QWORD PTR [rip+0x201a55]        # 604268 <pointer+0x68>
  402813:	48 8b 2d 56 1a 20 00 	mov    rbp,QWORD PTR [rip+0x201a56]        # 604270 <pointer+0x70>
  40281a:	48 8b 25 57 1a 20 00 	mov    rsp,QWORD PTR [rip+0x201a57]        # 604278 <pointer+0x78>
  402821:	ff 25 b1 19 20 00    	jmp    QWORD PTR [rip+0x2019b1]        # 6041d8 <buffer>
  402827:	90                   	nop
  402828:	90                   	nop
  402829:	90                   	nop
  40282a:	90                   	nop

000000000040282b <resume>:
  40282b:	48 8b 05 ce 18 20 00 	mov    rax,QWORD PTR [rip+0x2018ce]        # 604100 <back>
  402832:	48 8b 1d d7 18 20 00 	mov    rbx,QWORD PTR [rip+0x2018d7]        # 604110 <back+0x10>
  402839:	48 8b 0d c8 18 20 00 	mov    rcx,QWORD PTR [rip+0x2018c8]        # 604108 <back+0x8>
  402840:	48 8b 15 d1 18 20 00 	mov    rdx,QWORD PTR [rip+0x2018d1]        # 604118 <back+0x18>
  402847:	48 8b 35 d2 18 20 00 	mov    rsi,QWORD PTR [rip+0x2018d2]        # 604120 <back+0x20>
  40284e:	48 8b 3d d3 18 20 00 	mov    rdi,QWORD PTR [rip+0x2018d3]        # 604128 <back+0x28>
  402855:	4c 8b 05 e4 18 20 00 	mov    r8,QWORD PTR [rip+0x2018e4]        # 604140 <back+0x40>
  40285c:	4c 8b 0d e5 18 20 00 	mov    r9,QWORD PTR [rip+0x2018e5]        # 604148 <back+0x48>
  402863:	4c 8b 15 e6 18 20 00 	mov    r10,QWORD PTR [rip+0x2018e6]        # 604150 <back+0x50>
  40286a:	4c 8b 1d e7 18 20 00 	mov    r11,QWORD PTR [rip+0x2018e7]        # 604158 <back+0x58>
  402871:	4c 8b 25 e8 18 20 00 	mov    r12,QWORD PTR [rip+0x2018e8]        # 604160 <back+0x60>
  402878:	4c 8b 2d e9 18 20 00 	mov    r13,QWORD PTR [rip+0x2018e9]        # 604168 <back+0x68>
  40287f:	4c 8b 35 ea 18 20 00 	mov    r14,QWORD PTR [rip+0x2018ea]        # 604170 <back+0x70>
  402886:	4c 8b 3d eb 18 20 00 	mov    r15,QWORD PTR [rip+0x2018eb]        # 604178 <back+0x78>
  40288d:	48 8b 2d 9c 18 20 00 	mov    rbp,QWORD PTR [rip+0x20189c]        # 604130 <back+0x30>
  402894:	48 8b 25 9d 18 20 00 	mov    rsp,QWORD PTR [rip+0x20189d]        # 604138 <back+0x38>
  40289b:	9d                   	popf   
  40289c:	e9 0e fd ff ff       	jmp    4025af <main+0x55d>
  4028a1:	90                   	nop
  4028a2:	48 8b 15 47 18 20 00 	mov    rdx,QWORD PTR [rip+0x201847]        # 6040f0 <results>
  4028a9:	48 8b 05 d8 19 20 00 	mov    rax,QWORD PTR [rip+0x2019d8]        # 604288 <fout>
  4028b0:	be fa 2a 40 00       	mov    esi,0x402afa
  4028b5:	48 89 c7             	mov    rdi,rax
  4028b8:	b8 00 00 00 00       	mov    eax,0x0
  4028bd:	e8 fe df ff ff       	call   4008c0 <fprintf@plt>
  4028c2:	89 85 3c ff ff ff    	mov    DWORD PTR [rbp-0xc4],eax
  4028c8:	8b 85 3c ff ff ff    	mov    eax,DWORD PTR [rbp-0xc4]
  4028ce:	48 63 d0             	movsxd rdx,eax
  4028d1:	48 8b 05 f0 18 20 00 	mov    rax,QWORD PTR [rip+0x2018f0]        # 6041c8 <allPrintedBytes>
  4028d8:	48 01 d0             	add    rax,rdx
  4028db:	48 89 05 e6 18 20 00 	mov    QWORD PTR [rip+0x2018e6],rax        # 6041c8 <allPrintedBytes>
  4028e2:	48 8b 05 df 18 20 00 	mov    rax,QWORD PTR [rip+0x2018df]        # 6041c8 <allPrintedBytes>
  4028e9:	48 89 c6             	mov    rsi,rax
  4028ec:	bf 11 2c 40 00       	mov    edi,0x402c11
  4028f1:	b8 00 00 00 00       	mov    eax,0x0
  4028f6:	e8 75 df ff ff       	call   400870 <printf@plt>
  4028fb:	b8 00 00 00 00       	mov    eax,0x0
  402900:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  402904:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  40290b:	00 00 
  40290d:	74 05                	je     402914 <resume+0xe9>
  40290f:	e8 3c df ff ff       	call   400850 <__stack_chk_fail@plt>
  402914:	c9                   	leave  
  402915:	c3                   	ret    
  402916:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40291d:	00 00 00 

0000000000402920 <__libc_csu_init>:
  402920:	41 57                	push   r15
  402922:	41 56                	push   r14
  402924:	41 89 ff             	mov    r15d,edi
  402927:	41 55                	push   r13
  402929:	41 54                	push   r12
  40292b:	4c 8d 25 de 14 20 00 	lea    r12,[rip+0x2014de]        # 603e10 <__frame_dummy_init_array_entry>
  402932:	55                   	push   rbp
  402933:	48 8d 2d de 14 20 00 	lea    rbp,[rip+0x2014de]        # 603e18 <__init_array_end>
  40293a:	53                   	push   rbx
  40293b:	49 89 f6             	mov    r14,rsi
  40293e:	49 89 d5             	mov    r13,rdx
  402941:	4c 29 e5             	sub    rbp,r12
  402944:	48 83 ec 08          	sub    rsp,0x8
  402948:	48 c1 fd 03          	sar    rbp,0x3
  40294c:	e8 7f de ff ff       	call   4007d0 <_init>
  402951:	48 85 ed             	test   rbp,rbp
  402954:	74 20                	je     402976 <__libc_csu_init+0x56>
  402956:	31 db                	xor    ebx,ebx
  402958:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40295f:	00 
  402960:	4c 89 ea             	mov    rdx,r13
  402963:	4c 89 f6             	mov    rsi,r14
  402966:	44 89 ff             	mov    edi,r15d
  402969:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40296d:	48 83 c3 01          	add    rbx,0x1
  402971:	48 39 eb             	cmp    rbx,rbp
  402974:	75 ea                	jne    402960 <__libc_csu_init+0x40>
  402976:	48 83 c4 08          	add    rsp,0x8
  40297a:	5b                   	pop    rbx
  40297b:	5d                   	pop    rbp
  40297c:	41 5c                	pop    r12
  40297e:	41 5d                	pop    r13
  402980:	41 5e                	pop    r14
  402982:	41 5f                	pop    r15
  402984:	c3                   	ret    
  402985:	90                   	nop
  402986:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40298d:	00 00 00 

0000000000402990 <__libc_csu_fini>:
  402990:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000402994 <_fini>:
  402994:	48 83 ec 08          	sub    rsp,0x8
  402998:	48 83 c4 08          	add    rsp,0x8
  40299c:	c3                   	ret    
