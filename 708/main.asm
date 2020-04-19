
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000000618 <_init>:
 618:	48 83 ec 08          	sub    rsp,0x8
 61c:	48 8b 05 c5 09 20 00 	mov    rax,QWORD PTR [rip+0x2009c5]        # 200fe8 <__gmon_start__>
 623:	48 85 c0             	test   rax,rax
 626:	74 02                	je     62a <_init+0x12>
 628:	ff d0                	call   rax
 62a:	48 83 c4 08          	add    rsp,0x8
 62e:	c3                   	ret    

Disassembly of section .plt:

0000000000000630 <.plt>:
 630:	ff 35 6a 09 20 00    	push   QWORD PTR [rip+0x20096a]        # 200fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 636:	ff 25 6c 09 20 00    	jmp    QWORD PTR [rip+0x20096c]        # 200fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 63c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000640 <puts@plt>:
 640:	ff 25 6a 09 20 00    	jmp    QWORD PTR [rip+0x20096a]        # 200fb0 <puts@GLIBC_2.2.5>
 646:	68 00 00 00 00       	push   0x0
 64b:	e9 e0 ff ff ff       	jmp    630 <.plt>

0000000000000650 <__stack_chk_fail@plt>:
 650:	ff 25 62 09 20 00    	jmp    QWORD PTR [rip+0x200962]        # 200fb8 <__stack_chk_fail@GLIBC_2.4>
 656:	68 01 00 00 00       	push   0x1
 65b:	e9 d0 ff ff ff       	jmp    630 <.plt>

0000000000000660 <printf@plt>:
 660:	ff 25 5a 09 20 00    	jmp    QWORD PTR [rip+0x20095a]        # 200fc0 <printf@GLIBC_2.2.5>
 666:	68 02 00 00 00       	push   0x2
 66b:	e9 c0 ff ff ff       	jmp    630 <.plt>

0000000000000670 <malloc@plt>:
 670:	ff 25 52 09 20 00    	jmp    QWORD PTR [rip+0x200952]        # 200fc8 <malloc@GLIBC_2.2.5>
 676:	68 03 00 00 00       	push   0x3
 67b:	e9 b0 ff ff ff       	jmp    630 <.plt>

0000000000000680 <__isoc99_scanf@plt>:
 680:	ff 25 4a 09 20 00    	jmp    QWORD PTR [rip+0x20094a]        # 200fd0 <__isoc99_scanf@GLIBC_2.7>
 686:	68 04 00 00 00       	push   0x4
 68b:	e9 a0 ff ff ff       	jmp    630 <.plt>

Disassembly of section .plt.got:

0000000000000690 <__cxa_finalize@plt>:
 690:	ff 25 62 09 20 00    	jmp    QWORD PTR [rip+0x200962]        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 696:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000006a0 <_start>:
 6a0:	31 ed                	xor    ebp,ebp
 6a2:	49 89 d1             	mov    r9,rdx
 6a5:	5e                   	pop    rsi
 6a6:	48 89 e2             	mov    rdx,rsp
 6a9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
 6ad:	50                   	push   rax
 6ae:	54                   	push   rsp
 6af:	4c 8d 05 ba 03 00 00 	lea    r8,[rip+0x3ba]        # a70 <__libc_csu_fini>
 6b6:	48 8d 0d 43 03 00 00 	lea    rcx,[rip+0x343]        # a00 <__libc_csu_init>
 6bd:	48 8d 3d 07 02 00 00 	lea    rdi,[rip+0x207]        # 8cb <main>
 6c4:	ff 15 16 09 20 00    	call   QWORD PTR [rip+0x200916]        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 6ca:	f4                   	hlt    
 6cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000006d0 <deregister_tm_clones>:
 6d0:	48 8d 3d 39 09 20 00 	lea    rdi,[rip+0x200939]        # 201010 <__TMC_END__>
 6d7:	55                   	push   rbp
 6d8:	48 8d 05 31 09 20 00 	lea    rax,[rip+0x200931]        # 201010 <__TMC_END__>
 6df:	48 39 f8             	cmp    rax,rdi
 6e2:	48 89 e5             	mov    rbp,rsp
 6e5:	74 19                	je     700 <deregister_tm_clones+0x30>
 6e7:	48 8b 05 ea 08 20 00 	mov    rax,QWORD PTR [rip+0x2008ea]        # 200fd8 <_ITM_deregisterTMCloneTable>
 6ee:	48 85 c0             	test   rax,rax
 6f1:	74 0d                	je     700 <deregister_tm_clones+0x30>
 6f3:	5d                   	pop    rbp
 6f4:	ff e0                	jmp    rax
 6f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 6fd:	00 00 00 
 700:	5d                   	pop    rbp
 701:	c3                   	ret    
 702:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 706:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 70d:	00 00 00 

0000000000000710 <register_tm_clones>:
 710:	48 8d 3d f9 08 20 00 	lea    rdi,[rip+0x2008f9]        # 201010 <__TMC_END__>
 717:	48 8d 35 f2 08 20 00 	lea    rsi,[rip+0x2008f2]        # 201010 <__TMC_END__>
 71e:	55                   	push   rbp
 71f:	48 29 fe             	sub    rsi,rdi
 722:	48 89 e5             	mov    rbp,rsp
 725:	48 c1 fe 03          	sar    rsi,0x3
 729:	48 89 f0             	mov    rax,rsi
 72c:	48 c1 e8 3f          	shr    rax,0x3f
 730:	48 01 c6             	add    rsi,rax
 733:	48 d1 fe             	sar    rsi,1
 736:	74 18                	je     750 <register_tm_clones+0x40>
 738:	48 8b 05 b1 08 20 00 	mov    rax,QWORD PTR [rip+0x2008b1]        # 200ff0 <_ITM_registerTMCloneTable>
 73f:	48 85 c0             	test   rax,rax
 742:	74 0c                	je     750 <register_tm_clones+0x40>
 744:	5d                   	pop    rbp
 745:	ff e0                	jmp    rax
 747:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 74e:	00 00 
 750:	5d                   	pop    rbp
 751:	c3                   	ret    
 752:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 756:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 75d:	00 00 00 

0000000000000760 <__do_global_dtors_aux>:
 760:	80 3d a9 08 20 00 00 	cmp    BYTE PTR [rip+0x2008a9],0x0        # 201010 <__TMC_END__>
 767:	75 2f                	jne    798 <__do_global_dtors_aux+0x38>
 769:	48 83 3d 87 08 20 00 	cmp    QWORD PTR [rip+0x200887],0x0        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 770:	00 
 771:	55                   	push   rbp
 772:	48 89 e5             	mov    rbp,rsp
 775:	74 0c                	je     783 <__do_global_dtors_aux+0x23>
 777:	48 8b 3d 8a 08 20 00 	mov    rdi,QWORD PTR [rip+0x20088a]        # 201008 <__dso_handle>
 77e:	e8 0d ff ff ff       	call   690 <__cxa_finalize@plt>
 783:	e8 48 ff ff ff       	call   6d0 <deregister_tm_clones>
 788:	c6 05 81 08 20 00 01 	mov    BYTE PTR [rip+0x200881],0x1        # 201010 <__TMC_END__>
 78f:	5d                   	pop    rbp
 790:	c3                   	ret    
 791:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 798:	f3 c3                	repz ret 
 79a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000007a0 <frame_dummy>:
 7a0:	55                   	push   rbp
 7a1:	48 89 e5             	mov    rbp,rsp
 7a4:	5d                   	pop    rbp
 7a5:	e9 66 ff ff ff       	jmp    710 <register_tm_clones>

00000000000007aa <insert>:
 7aa:	55                   	push   rbp
 7ab:	48 89 e5             	mov    rbp,rsp
 7ae:	48 83 ec 10          	sub    rsp,0x10
 7b2:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
 7b6:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
 7b9:	bf 10 00 00 00       	mov    edi,0x10
 7be:	e8 ad fe ff ff       	call   670 <malloc@plt>
 7c3:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 7c7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 7cb:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
 7ce:	89 10                	mov    DWORD PTR [rax],edx
 7d0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 7d4:	48 c7 40 08 00 00 00 	mov    QWORD PTR [rax+0x8],0x0
 7db:	00 
 7dc:	90                   	nop
 7dd:	c9                   	leave  
 7de:	c3                   	ret    

00000000000007df <prt_list>:
 7df:	55                   	push   rbp
 7e0:	48 89 e5             	mov    rbp,rsp
 7e3:	48 83 ec 20          	sub    rsp,0x20
 7e7:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 7eb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 7ef:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 7f3:	48 8d 3d 8a 02 00 00 	lea    rdi,[rip+0x28a]        # a84 <_IO_stdin_used+0x4>
 7fa:	b8 00 00 00 00       	mov    eax,0x0
 7ff:	e8 5c fe ff ff       	call   660 <printf@plt>
 804:	eb 25                	jmp    82b <prt_list+0x4c>
 806:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 80a:	8b 00                	mov    eax,DWORD PTR [rax]
 80c:	89 c6                	mov    esi,eax
 80e:	48 8d 3d 7d 02 00 00 	lea    rdi,[rip+0x27d]        # a92 <_IO_stdin_used+0x12>
 815:	b8 00 00 00 00       	mov    eax,0x0
 81a:	e8 41 fe ff ff       	call   660 <printf@plt>
 81f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 823:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
 827:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 82b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 82f:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
 833:	48 39 45 e8          	cmp    QWORD PTR [rbp-0x18],rax
 837:	75 cd                	jne    806 <prt_list+0x27>
 839:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 83d:	8b 00                	mov    eax,DWORD PTR [rax]
 83f:	89 c6                	mov    esi,eax
 841:	48 8d 3d 4f 02 00 00 	lea    rdi,[rip+0x24f]        # a97 <_IO_stdin_used+0x17>
 848:	b8 00 00 00 00       	mov    eax,0x0
 84d:	e8 0e fe ff ff       	call   660 <printf@plt>
 852:	90                   	nop
 853:	c9                   	leave  
 854:	c3                   	ret    

0000000000000855 <insertVal>:
 855:	55                   	push   rbp
 856:	48 89 e5             	mov    rbp,rsp
 859:	48 83 ec 20          	sub    rsp,0x20
 85d:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 861:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
 864:	48 8d 45 e8          	lea    rax,[rbp-0x18]
 868:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 86c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 870:	48 8b 00             	mov    rax,QWORD PTR [rax]
 873:	48 85 c0             	test   rax,rax
 876:	74 21                	je     899 <insertVal+0x44>
 878:	eb 0f                	jmp    889 <insertVal+0x34>
 87a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 87e:	48 8b 00             	mov    rax,QWORD PTR [rax]
 881:	48 83 c0 08          	add    rax,0x8
 885:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 889:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 88d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
 890:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 894:	48 39 c2             	cmp    rdx,rax
 897:	75 e1                	jne    87a <insertVal+0x25>
 899:	bf 10 00 00 00       	mov    edi,0x10
 89e:	e8 cd fd ff ff       	call   670 <malloc@plt>
 8a3:	48 89 c2             	mov    rdx,rax
 8a6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 8aa:	48 89 10             	mov    QWORD PTR [rax],rdx
 8ad:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 8b1:	48 8b 00             	mov    rax,QWORD PTR [rax]
 8b4:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
 8b7:	89 10                	mov    DWORD PTR [rax],edx
 8b9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 8bd:	48 8b 00             	mov    rax,QWORD PTR [rax]
 8c0:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
 8c4:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
 8c8:	90                   	nop
 8c9:	c9                   	leave  
 8ca:	c3                   	ret    

00000000000008cb <main>:
 8cb:	55                   	push   rbp
 8cc:	48 89 e5             	mov    rbp,rsp
 8cf:	48 83 ec 30          	sub    rsp,0x30
 8d3:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 8da:	00 00 
 8dc:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 8e0:	31 c0                	xor    eax,eax
 8e2:	48 8d 3d b2 01 00 00 	lea    rdi,[rip+0x1b2]        # a9b <_IO_stdin_used+0x1b>
 8e9:	b8 00 00 00 00       	mov    eax,0x0
 8ee:	e8 6d fd ff ff       	call   660 <printf@plt>
 8f3:	48 8d 45 dc          	lea    rax,[rbp-0x24]
 8f7:	48 89 c6             	mov    rsi,rax
 8fa:	48 8d 3d a8 01 00 00 	lea    rdi,[rip+0x1a8]        # aa9 <_IO_stdin_used+0x29>
 901:	b8 00 00 00 00       	mov    eax,0x0
 906:	e8 75 fd ff ff       	call   680 <__isoc99_scanf@plt>
 90b:	48 8d 45 e8          	lea    rax,[rbp-0x18]
 90f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
 913:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x0
 91a:	eb 55                	jmp    971 <main+0xa6>
 91c:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 920:	48 89 c6             	mov    rsi,rax
 923:	48 8d 3d 7f 01 00 00 	lea    rdi,[rip+0x17f]        # aa9 <_IO_stdin_used+0x29>
 92a:	b8 00 00 00 00       	mov    eax,0x0
 92f:	e8 4c fd ff ff       	call   680 <__isoc99_scanf@plt>
 934:	8b 55 e0             	mov    edx,DWORD PTR [rbp-0x20]
 937:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 93b:	48 8b 00             	mov    rax,QWORD PTR [rax]
 93e:	89 d6                	mov    esi,edx
 940:	48 89 c7             	mov    rdi,rax
 943:	e8 62 fe ff ff       	call   7aa <insert>
 948:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
 94b:	89 c6                	mov    esi,eax
 94d:	48 8d 3d 43 01 00 00 	lea    rdi,[rip+0x143]        # a97 <_IO_stdin_used+0x17>
 954:	b8 00 00 00 00       	mov    eax,0x0
 959:	e8 02 fd ff ff       	call   660 <printf@plt>
 95e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 962:	48 8b 00             	mov    rax,QWORD PTR [rax]
 965:	48 83 c0 08          	add    rax,0x8
 969:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
 96d:	83 45 e4 01          	add    DWORD PTR [rbp-0x1c],0x1
 971:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
 974:	39 45 e4             	cmp    DWORD PTR [rbp-0x1c],eax
 977:	7c a3                	jl     91c <main+0x51>
 979:	48 8d 3d 2c 01 00 00 	lea    rdi,[rip+0x12c]        # aac <_IO_stdin_used+0x2c>
 980:	e8 bb fc ff ff       	call   640 <puts@plt>
 985:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 989:	48 89 c7             	mov    rdi,rax
 98c:	e8 4e fe ff ff       	call   7df <prt_list>
 991:	48 8d 3d 19 01 00 00 	lea    rdi,[rip+0x119]        # ab1 <_IO_stdin_used+0x31>
 998:	b8 00 00 00 00       	mov    eax,0x0
 99d:	e8 be fc ff ff       	call   660 <printf@plt>
 9a2:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 9a6:	48 89 c6             	mov    rsi,rax
 9a9:	48 8d 3d f9 00 00 00 	lea    rdi,[rip+0xf9]        # aa9 <_IO_stdin_used+0x29>
 9b0:	b8 00 00 00 00       	mov    eax,0x0
 9b5:	e8 c6 fc ff ff       	call   680 <__isoc99_scanf@plt>
 9ba:	8b 55 e0             	mov    edx,DWORD PTR [rbp-0x20]
 9bd:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 9c1:	89 d6                	mov    esi,edx
 9c3:	48 89 c7             	mov    rdi,rax
 9c6:	e8 8a fe ff ff       	call   855 <insertVal>
 9cb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 9cf:	48 89 c7             	mov    rdi,rax
 9d2:	e8 08 fe ff ff       	call   7df <prt_list>
 9d7:	b8 00 00 00 00       	mov    eax,0x0
 9dc:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
 9e0:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
 9e7:	00 00 
 9e9:	74 05                	je     9f0 <main+0x125>
 9eb:	e8 60 fc ff ff       	call   650 <__stack_chk_fail@plt>
 9f0:	c9                   	leave  
 9f1:	c3                   	ret    
 9f2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 9f9:	00 00 00 
 9fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000a00 <__libc_csu_init>:
 a00:	41 57                	push   r15
 a02:	41 56                	push   r14
 a04:	49 89 d7             	mov    r15,rdx
 a07:	41 55                	push   r13
 a09:	41 54                	push   r12
 a0b:	4c 8d 25 86 03 20 00 	lea    r12,[rip+0x200386]        # 200d98 <__frame_dummy_init_array_entry>
 a12:	55                   	push   rbp
 a13:	48 8d 2d 86 03 20 00 	lea    rbp,[rip+0x200386]        # 200da0 <__init_array_end>
 a1a:	53                   	push   rbx
 a1b:	41 89 fd             	mov    r13d,edi
 a1e:	49 89 f6             	mov    r14,rsi
 a21:	4c 29 e5             	sub    rbp,r12
 a24:	48 83 ec 08          	sub    rsp,0x8
 a28:	48 c1 fd 03          	sar    rbp,0x3
 a2c:	e8 e7 fb ff ff       	call   618 <_init>
 a31:	48 85 ed             	test   rbp,rbp
 a34:	74 20                	je     a56 <__libc_csu_init+0x56>
 a36:	31 db                	xor    ebx,ebx
 a38:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 a3f:	00 
 a40:	4c 89 fa             	mov    rdx,r15
 a43:	4c 89 f6             	mov    rsi,r14
 a46:	44 89 ef             	mov    edi,r13d
 a49:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
 a4d:	48 83 c3 01          	add    rbx,0x1
 a51:	48 39 dd             	cmp    rbp,rbx
 a54:	75 ea                	jne    a40 <__libc_csu_init+0x40>
 a56:	48 83 c4 08          	add    rsp,0x8
 a5a:	5b                   	pop    rbx
 a5b:	5d                   	pop    rbp
 a5c:	41 5c                	pop    r12
 a5e:	41 5d                	pop    r13
 a60:	41 5e                	pop    r14
 a62:	41 5f                	pop    r15
 a64:	c3                   	ret    
 a65:	90                   	nop
 a66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 a6d:	00 00 00 

0000000000000a70 <__libc_csu_fini>:
 a70:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000000a74 <_fini>:
 a74:	48 83 ec 08          	sub    rsp,0x8
 a78:	48 83 c4 08          	add    rsp,0x8
 a7c:	c3                   	ret    
