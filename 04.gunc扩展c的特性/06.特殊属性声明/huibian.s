
a.out：     文件格式 elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	insb   (%dx),%es:(%rdi)
 23a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 246:	78 2d                	js     275 <_init-0x243>
 248:	78 38                	js     282 <_init-0x236>
 24a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 250:	6f                   	outsl  %ds:(%rsi),(%dx)
 251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    $0x0,%al
 256:	00 00                	add    %al,(%rax)
 258:	10 00                	adc    %al,(%rax)
 25a:	00 00                	add    %al,(%rax)
 25c:	01 00                	add    %eax,(%rax)
 25e:	00 00                	add    %al,(%rax)
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push %rbp
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	00 03                	add    %al,(%rbx)
 269:	00 00                	add    %al,(%rax)
 26b:	00 02                	add    %al,(%rdx)
 26d:	00 00                	add    %al,(%rax)
 26f:	00 00                	add    %al,(%rax)
 271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    $0x0,%al
 276:	00 00                	add    %al,(%rax)
 278:	14 00                	adc    $0x0,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	03 00                	add    (%rax),%eax
 27e:	00 00                	add    %al,(%rax)
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push %rbp
 283:	00 78 a7             	add    %bh,-0x59(%rax)
 286:	00 58 cb             	add    %bl,-0x35(%rax)
 289:	9b                   	fwait
 28a:	d7                   	xlat   %ds:(%rbx)
 28b:	e3 a5                	jrcxz  232 <_init-0x286>
 28d:	61                   	(bad)  
 28e:	fc                   	cld    
 28f:	6c                   	insb   (%dx),%es:(%rdi)
 290:	86 47 a6             	xchg   %al,-0x5a(%rdi)
 293:	02 f2                	add    %dl,%dh
 295:	5e                   	pop    %rsi
 296:	6f                   	outsl  %ds:(%rsi),(%dx)
 297:	27                   	(bad)  

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	01 00                	add    %eax,(%rax)
 29a:	00 00                	add    %al,(%rax)
 29c:	01 00                	add    %eax,(%rax)
 29e:	00 00                	add    %al,(%rax)
 2a0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000000002b8 <.dynsym>:
	...
 2d0:	38 00                	cmp    %al,(%rax)
 2d2:	00 00                	add    %al,(%rax)
 2d4:	20 00                	and    %al,(%rax)
	...
 2e6:	00 00                	add    %al,(%rax)
 2e8:	1a 00                	sbb    (%rax),%al
 2ea:	00 00                	add    %al,(%rax)
 2ec:	12 00                	adc    (%rax),%al
	...
 2fe:	00 00                	add    %al,(%rax)
 300:	54                   	push   %rsp
 301:	00 00                	add    %al,(%rax)
 303:	00 20                	add    %ah,(%rax)
	...
 315:	00 00                	add    %al,(%rax)
 317:	00 63 00             	add    %ah,0x0(%rbx)
 31a:	00 00                	add    %al,(%rax)
 31c:	20 00                	and    %al,(%rax)
	...
 32e:	00 00                	add    %al,(%rax)
 330:	0b 00                	or     (%rax),%eax
 332:	00 00                	add    %al,(%rax)
 334:	22 00                	and    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000000348 <.dynstr>:
 348:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 34c:	63 2e                	movslq (%rsi),%ebp
 34e:	73 6f                	jae    3bf <_init-0xf9>
 350:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
 355:	63 78 61             	movslq 0x61(%rax),%edi
 358:	5f                   	pop    %rdi
 359:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 35f:	7a 65                	jp     3c6 <_init-0xf2>
 361:	00 5f 5f             	add    %bl,0x5f(%rdi)
 364:	6c                   	insb   (%dx),%es:(%rdi)
 365:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 36c:	72 74                	jb     3e2 <_init-0xd6>
 36e:	5f                   	pop    %rdi
 36f:	6d                   	insl   (%dx),%es:(%rdi)
 370:	61                   	(bad)  
 371:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
 378:	43 5f                	rex.XB pop %r15
 37a:	32 2e                	xor    (%rsi),%ch
 37c:	32 2e                	xor    (%rsi),%ch
 37e:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 383:	4d 5f                	rex.WRB pop %r15
 385:	64 65 72 65          	fs gs jb 3ee <_init-0xca>
 389:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 390:	4d 
 391:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 393:	6f                   	outsl  %ds:(%rsi),(%dx)
 394:	6e                   	outsb  %ds:(%rsi),(%dx)
 395:	65 54                	gs push %rsp
 397:	61                   	(bad)  
 398:	62                   	(bad)  
 399:	6c                   	insb   (%dx),%es:(%rdi)
 39a:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 39e:	67 6d                	insl   (%dx),%es:(%edi)
 3a0:	6f                   	outsl  %ds:(%rsi),(%dx)
 3a1:	6e                   	outsb  %ds:(%rsi),(%dx)
 3a2:	5f                   	pop    %rdi
 3a3:	73 74                	jae    419 <_init-0x9f>
 3a5:	61                   	(bad)  
 3a6:	72 74                	jb     41c <_init-0x9c>
 3a8:	5f                   	pop    %rdi
 3a9:	5f                   	pop    %rdi
 3aa:	00 5f 49             	add    %bl,0x49(%rdi)
 3ad:	54                   	push   %rsp
 3ae:	4d 5f                	rex.WRB pop %r15
 3b0:	72 65                	jb     417 <_init-0xa1>
 3b2:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 3b9:	4d 
 3ba:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 3bc:	6f                   	outsl  %ds:(%rsi),(%dx)
 3bd:	6e                   	outsb  %ds:(%rsi),(%dx)
 3be:	65 54                	gs push %rsp
 3c0:	61                   	(bad)  
 3c1:	62                   	.byte 0x62
 3c2:	6c                   	insb   (%dx),%es:(%rdi)
 3c3:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000003c6 <.gnu.version>:
 3c6:	00 00                	add    %al,(%rax)
 3c8:	00 00                	add    %al,(%rax)
 3ca:	02 00                	add    (%rax),%al
 3cc:	00 00                	add    %al,(%rax)
 3ce:	00 00                	add    %al,(%rax)
 3d0:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000000003d8 <.gnu.version_r>:
 3d8:	01 00                	add    %eax,(%rax)
 3da:	01 00                	add    %eax,(%rax)
 3dc:	01 00                	add    %eax,(%rax)
 3de:	00 00                	add    %al,(%rax)
 3e0:	10 00                	adc    %al,(%rax)
 3e2:	00 00                	add    %al,(%rax)
 3e4:	00 00                	add    %al,(%rax)
 3e6:	00 00                	add    %al,(%rax)
 3e8:	75 1a                	jne    404 <_init-0xb4>
 3ea:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 3f0:	2c 00                	sub    $0x0,%al
 3f2:	00 00                	add    %al,(%rax)
 3f4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000003f8 <.rela.dyn>:
 3f8:	f0 0d 20 00 00 00    	lock or $0x20,%eax
 3fe:	00 00                	add    %al,(%rax)
 400:	08 00                	or     %al,(%rax)
 402:	00 00                	add    %al,(%rax)
 404:	00 00                	add    %al,(%rax)
 406:	00 00                	add    %al,(%rax)
 408:	f0 05 00 00 00 00    	lock add $0x0,%eax
 40e:	00 00                	add    %al,(%rax)
 410:	f8                   	clc    
 411:	0d 20 00 00 00       	or     $0x20,%eax
 416:	00 00                	add    %al,(%rax)
 418:	08 00                	or     %al,(%rax)
 41a:	00 00                	add    %al,(%rax)
 41c:	00 00                	add    %al,(%rax)
 41e:	00 00                	add    %al,(%rax)
 420:	b0 05                	mov    $0x5,%al
 422:	00 00                	add    %al,(%rax)
 424:	00 00                	add    %al,(%rax)
 426:	00 00                	add    %al,(%rax)
 428:	08 10                	or     %dl,(%rax)
 42a:	20 00                	and    %al,(%rax)
 42c:	00 00                	add    %al,(%rax)
 42e:	00 00                	add    %al,(%rax)
 430:	08 00                	or     %al,(%rax)
 432:	00 00                	add    %al,(%rax)
 434:	00 00                	add    %al,(%rax)
 436:	00 00                	add    %al,(%rax)
 438:	08 10                	or     %dl,(%rax)
 43a:	20 00                	and    %al,(%rax)
 43c:	00 00                	add    %al,(%rax)
 43e:	00 00                	add    %al,(%rax)
 440:	d8 0f                	fmuls  (%rdi)
 442:	20 00                	and    %al,(%rax)
 444:	00 00                	add    %al,(%rax)
 446:	00 00                	add    %al,(%rax)
 448:	06                   	(bad)  
 449:	00 00                	add    %al,(%rax)
 44b:	00 01                	add    %al,(%rcx)
	...
 455:	00 00                	add    %al,(%rax)
 457:	00 e0                	add    %ah,%al
 459:	0f 20 00             	mov    %cr0,%rax
 45c:	00 00                	add    %al,(%rax)
 45e:	00 00                	add    %al,(%rax)
 460:	06                   	(bad)  
 461:	00 00                	add    %al,(%rax)
 463:	00 02                	add    %al,(%rdx)
	...
 46d:	00 00                	add    %al,(%rax)
 46f:	00 e8                	add    %ch,%al
 471:	0f 20 00             	mov    %cr0,%rax
 474:	00 00                	add    %al,(%rax)
 476:	00 00                	add    %al,(%rax)
 478:	06                   	(bad)  
 479:	00 00                	add    %al,(%rax)
 47b:	00 03                	add    %al,(%rbx)
	...
 485:	00 00                	add    %al,(%rax)
 487:	00 f0                	add    %dh,%al
 489:	0f 20 00             	mov    %cr0,%rax
 48c:	00 00                	add    %al,(%rax)
 48e:	00 00                	add    %al,(%rax)
 490:	06                   	(bad)  
 491:	00 00                	add    %al,(%rax)
 493:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 49e:	00 00                	add    %al,(%rax)
 4a0:	f8                   	clc    
 4a1:	0f 20 00             	mov    %cr0,%rax
 4a4:	00 00                	add    %al,(%rax)
 4a6:	00 00                	add    %al,(%rax)
 4a8:	06                   	(bad)  
 4a9:	00 00                	add    %al,(%rax)
 4ab:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4b1 <_init-0x7>
 4b1:	00 00                	add    %al,(%rax)
 4b3:	00 00                	add    %al,(%rax)
 4b5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init:

00000000000004b8 <_init>:
 4b8:	48 83 ec 08          	sub    $0x8,%rsp
 4bc:	48 8b 05 25 0b 20 00 	mov    0x200b25(%rip),%rax        # 200fe8 <__gmon_start__>
 4c3:	48 85 c0             	test   %rax,%rax
 4c6:	74 02                	je     4ca <_init+0x12>
 4c8:	ff d0                	callq  *%rax
 4ca:	48 83 c4 08          	add    $0x8,%rsp
 4ce:	c3                   	retq   

Disassembly of section .plt:

00000000000004d0 <.plt>:
 4d0:	ff 35 f2 0a 20 00    	pushq  0x200af2(%rip)        # 200fc8 <_GLOBAL_OFFSET_TABLE_+0x8>
 4d6:	ff 25 f4 0a 20 00    	jmpq   *0x200af4(%rip)        # 200fd0 <_GLOBAL_OFFSET_TABLE_+0x10>
 4dc:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

00000000000004e0 <__cxa_finalize@plt>:
 4e0:	ff 25 12 0b 20 00    	jmpq   *0x200b12(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 4e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000004f0 <_start>:
 4f0:	31 ed                	xor    %ebp,%ebp
 4f2:	49 89 d1             	mov    %rdx,%r9
 4f5:	5e                   	pop    %rsi
 4f6:	48 89 e2             	mov    %rsp,%rdx
 4f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 4fd:	50                   	push   %rax
 4fe:	54                   	push   %rsp
 4ff:	4c 8d 05 ea 01 00 00 	lea    0x1ea(%rip),%r8        # 6f0 <__libc_csu_fini>
 506:	48 8d 0d 73 01 00 00 	lea    0x173(%rip),%rcx        # 680 <__libc_csu_init>
 50d:	48 8d 3d 2a 01 00 00 	lea    0x12a(%rip),%rdi        # 63e <main>
 514:	ff 15 c6 0a 20 00    	callq  *0x200ac6(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 51a:	f4                   	hlt    
 51b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000520 <deregister_tm_clones>:
 520:	48 8d 3d 01 0b 20 00 	lea    0x200b01(%rip),%rdi        # 201028 <__TMC_END__>
 527:	55                   	push   %rbp
 528:	48 8d 05 f9 0a 20 00 	lea    0x200af9(%rip),%rax        # 201028 <__TMC_END__>
 52f:	48 39 f8             	cmp    %rdi,%rax
 532:	48 89 e5             	mov    %rsp,%rbp
 535:	74 19                	je     550 <deregister_tm_clones+0x30>
 537:	48 8b 05 9a 0a 20 00 	mov    0x200a9a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 53e:	48 85 c0             	test   %rax,%rax
 541:	74 0d                	je     550 <deregister_tm_clones+0x30>
 543:	5d                   	pop    %rbp
 544:	ff e0                	jmpq   *%rax
 546:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 54d:	00 00 00 
 550:	5d                   	pop    %rbp
 551:	c3                   	retq   
 552:	0f 1f 40 00          	nopl   0x0(%rax)
 556:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 55d:	00 00 00 

0000000000000560 <register_tm_clones>:
 560:	48 8d 3d c1 0a 20 00 	lea    0x200ac1(%rip),%rdi        # 201028 <__TMC_END__>
 567:	48 8d 35 ba 0a 20 00 	lea    0x200aba(%rip),%rsi        # 201028 <__TMC_END__>
 56e:	55                   	push   %rbp
 56f:	48 29 fe             	sub    %rdi,%rsi
 572:	48 89 e5             	mov    %rsp,%rbp
 575:	48 c1 fe 03          	sar    $0x3,%rsi
 579:	48 89 f0             	mov    %rsi,%rax
 57c:	48 c1 e8 3f          	shr    $0x3f,%rax
 580:	48 01 c6             	add    %rax,%rsi
 583:	48 d1 fe             	sar    %rsi
 586:	74 18                	je     5a0 <register_tm_clones+0x40>
 588:	48 8b 05 61 0a 20 00 	mov    0x200a61(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 58f:	48 85 c0             	test   %rax,%rax
 592:	74 0c                	je     5a0 <register_tm_clones+0x40>
 594:	5d                   	pop    %rbp
 595:	ff e0                	jmpq   *%rax
 597:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 59e:	00 00 
 5a0:	5d                   	pop    %rbp
 5a1:	c3                   	retq   
 5a2:	0f 1f 40 00          	nopl   0x0(%rax)
 5a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5ad:	00 00 00 

00000000000005b0 <__do_global_dtors_aux>:
 5b0:	80 3d 6d 0a 20 00 00 	cmpb   $0x0,0x200a6d(%rip)        # 201024 <_edata>
 5b7:	75 2f                	jne    5e8 <__do_global_dtors_aux+0x38>
 5b9:	48 83 3d 37 0a 20 00 	cmpq   $0x0,0x200a37(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 5c0:	00 
 5c1:	55                   	push   %rbp
 5c2:	48 89 e5             	mov    %rsp,%rbp
 5c5:	74 0c                	je     5d3 <__do_global_dtors_aux+0x23>
 5c7:	48 8b 3d 3a 0a 20 00 	mov    0x200a3a(%rip),%rdi        # 201008 <__dso_handle>
 5ce:	e8 0d ff ff ff       	callq  4e0 <__cxa_finalize@plt>
 5d3:	e8 48 ff ff ff       	callq  520 <deregister_tm_clones>
 5d8:	c6 05 45 0a 20 00 01 	movb   $0x1,0x200a45(%rip)        # 201024 <_edata>
 5df:	5d                   	pop    %rbp
 5e0:	c3                   	retq   
 5e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 5e8:	f3 c3                	repz retq 
 5ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000005f0 <frame_dummy>:
 5f0:	55                   	push   %rbp
 5f1:	48 89 e5             	mov    %rsp,%rbp
 5f4:	5d                   	pop    %rbp
 5f5:	e9 66 ff ff ff       	jmpq   560 <register_tm_clones>

00000000000005fa <p1>:
 5fa:	55                   	push   %rbp
 5fb:	48 89 e5             	mov    %rsp,%rbp
 5fe:	89 7d fc             	mov    %edi,-0x4(%rbp)
 601:	8b 45 fc             	mov    -0x4(%rbp),%eax
 604:	83 c0 01             	add    $0x1,%eax
 607:	89 05 03 0a 20 00    	mov    %eax,0x200a03(%rip)        # 201010 <q>
 60d:	90                   	nop
 60e:	5d                   	pop    %rbp
 60f:	c3                   	retq   

0000000000000610 <p2>:
 610:	55                   	push   %rbp
 611:	48 89 e5             	mov    %rsp,%rbp
 614:	89 7d fc             	mov    %edi,-0x4(%rbp)
 617:	89 75 f8             	mov    %esi,-0x8(%rbp)
 61a:	89 55 f4             	mov    %edx,-0xc(%rbp)
 61d:	89 4d f0             	mov    %ecx,-0x10(%rbp)
 620:	8b 55 fc             	mov    -0x4(%rbp),%edx
 623:	8b 45 f8             	mov    -0x8(%rbp),%eax
 626:	01 c2                	add    %eax,%edx
 628:	8b 45 f4             	mov    -0xc(%rbp),%eax
 62b:	01 c2                	add    %eax,%edx
 62d:	8b 45 f0             	mov    -0x10(%rbp),%eax
 630:	01 d0                	add    %edx,%eax
 632:	83 c0 01             	add    $0x1,%eax
 635:	89 05 d5 09 20 00    	mov    %eax,0x2009d5(%rip)        # 201010 <q>
 63b:	90                   	nop
 63c:	5d                   	pop    %rbp
 63d:	c3                   	retq   

000000000000063e <main>:
 63e:	55                   	push   %rbp
 63f:	48 89 e5             	mov    %rsp,%rbp
 642:	8b 05 cc 09 20 00    	mov    0x2009cc(%rip),%eax        # 201014 <t1>
 648:	89 c7                	mov    %eax,%edi
 64a:	e8 ab ff ff ff       	callq  5fa <p1>
 64f:	8b 0d cb 09 20 00    	mov    0x2009cb(%rip),%ecx        # 201020 <t4>
 655:	8b 15 c1 09 20 00    	mov    0x2009c1(%rip),%edx        # 20101c <t3>
 65b:	8b 35 b7 09 20 00    	mov    0x2009b7(%rip),%esi        # 201018 <t2>
 661:	8b 05 ad 09 20 00    	mov    0x2009ad(%rip),%eax        # 201014 <t1>
 667:	89 c7                	mov    %eax,%edi
 669:	e8 a2 ff ff ff       	callq  610 <p2>
 66e:	b8 00 00 00 00       	mov    $0x0,%eax
 673:	5d                   	pop    %rbp
 674:	c3                   	retq   
 675:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 67c:	00 00 00 
 67f:	90                   	nop

0000000000000680 <__libc_csu_init>:
 680:	41 57                	push   %r15
 682:	41 56                	push   %r14
 684:	49 89 d7             	mov    %rdx,%r15
 687:	41 55                	push   %r13
 689:	41 54                	push   %r12
 68b:	4c 8d 25 5e 07 20 00 	lea    0x20075e(%rip),%r12        # 200df0 <__frame_dummy_init_array_entry>
 692:	55                   	push   %rbp
 693:	48 8d 2d 5e 07 20 00 	lea    0x20075e(%rip),%rbp        # 200df8 <__init_array_end>
 69a:	53                   	push   %rbx
 69b:	41 89 fd             	mov    %edi,%r13d
 69e:	49 89 f6             	mov    %rsi,%r14
 6a1:	4c 29 e5             	sub    %r12,%rbp
 6a4:	48 83 ec 08          	sub    $0x8,%rsp
 6a8:	48 c1 fd 03          	sar    $0x3,%rbp
 6ac:	e8 07 fe ff ff       	callq  4b8 <_init>
 6b1:	48 85 ed             	test   %rbp,%rbp
 6b4:	74 20                	je     6d6 <__libc_csu_init+0x56>
 6b6:	31 db                	xor    %ebx,%ebx
 6b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 6bf:	00 
 6c0:	4c 89 fa             	mov    %r15,%rdx
 6c3:	4c 89 f6             	mov    %r14,%rsi
 6c6:	44 89 ef             	mov    %r13d,%edi
 6c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 6cd:	48 83 c3 01          	add    $0x1,%rbx
 6d1:	48 39 dd             	cmp    %rbx,%rbp
 6d4:	75 ea                	jne    6c0 <__libc_csu_init+0x40>
 6d6:	48 83 c4 08          	add    $0x8,%rsp
 6da:	5b                   	pop    %rbx
 6db:	5d                   	pop    %rbp
 6dc:	41 5c                	pop    %r12
 6de:	41 5d                	pop    %r13
 6e0:	41 5e                	pop    %r14
 6e2:	41 5f                	pop    %r15
 6e4:	c3                   	retq   
 6e5:	90                   	nop
 6e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6ed:	00 00 00 

00000000000006f0 <__libc_csu_fini>:
 6f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000006f4 <_fini>:
 6f4:	48 83 ec 08          	sub    $0x8,%rsp
 6f8:	48 83 c4 08          	add    $0x8,%rsp
 6fc:	c3                   	retq   

Disassembly of section .rodata:

0000000000000700 <_IO_stdin_used>:
 700:	01 00                	add    %eax,(%rax)
 702:	02 00                	add    (%rax),%al

Disassembly of section .eh_frame_hdr:

0000000000000704 <__GNU_EH_FRAME_HDR>:
 704:	01 1b                	add    %ebx,(%rbx)
 706:	03 3b                	add    (%rbx),%edi
 708:	48 00 00             	rex.W add %al,(%rax)
 70b:	00 08                	add    %cl,(%rax)
 70d:	00 00                	add    %al,(%rax)
 70f:	00 cc                	add    %cl,%ah
 711:	fd                   	std    
 712:	ff                   	(bad)  
 713:	ff 94 00 00 00 dc fd 	callq  *-0x2240000(%rax,%rax,1)
 71a:	ff                   	(bad)  
 71b:	ff                   	(bad)  
 71c:	bc 00 00 00 ec       	mov    $0xec000000,%esp
 721:	fd                   	std    
 722:	ff                   	(bad)  
 723:	ff 64 00 00          	jmpq   *0x0(%rax,%rax,1)
 727:	00 f6                	add    %dh,%dh
 729:	fe                   	(bad)  
 72a:	ff                   	(bad)  
 72b:	ff d4                	callq  *%rsp
 72d:	00 00                	add    %al,(%rax)
 72f:	00 0c ff             	add    %cl,(%rdi,%rdi,8)
 732:	ff                   	(bad)  
 733:	ff f4                	push   %rsp
 735:	00 00                	add    %al,(%rax)
 737:	00 3a                	add    %bh,(%rdx)
 739:	ff                   	(bad)  
 73a:	ff                   	(bad)  
 73b:	ff 14 01             	callq  *(%rcx,%rax,1)
 73e:	00 00                	add    %al,(%rax)
 740:	7c ff                	jl     741 <__GNU_EH_FRAME_HDR+0x3d>
 742:	ff                   	(bad)  
 743:	ff 34 01             	pushq  (%rcx,%rax,1)
 746:	00 00                	add    %al,(%rax)
 748:	ec                   	in     (%dx),%al
 749:	ff                   	(bad)  
 74a:	ff                   	(bad)  
 74b:	ff                   	(bad)  
 74c:	7c 01                	jl     74f <__GNU_EH_FRAME_HDR+0x4b>
	...

Disassembly of section .eh_frame:

0000000000000750 <__FRAME_END__-0x144>:
 750:	14 00                	adc    $0x0,%al
 752:	00 00                	add    %al,(%rax)
 754:	00 00                	add    %al,(%rax)
 756:	00 00                	add    %al,(%rax)
 758:	01 7a 52             	add    %edi,0x52(%rdx)
 75b:	00 01                	add    %al,(%rcx)
 75d:	78 10                	js     76f <__GNU_EH_FRAME_HDR+0x6b>
 75f:	01 1b                	add    %ebx,(%rbx)
 761:	0c 07                	or     $0x7,%al
 763:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
 769:	00 00                	add    %al,(%rax)
 76b:	00 1c 00             	add    %bl,(%rax,%rax,1)
 76e:	00 00                	add    %al,(%rax)
 770:	80 fd ff             	cmp    $0xff,%ch
 773:	ff 2b                	ljmp   *(%rbx)
	...
 77d:	00 00                	add    %al,(%rax)
 77f:	00 14 00             	add    %dl,(%rax,%rax,1)
 782:	00 00                	add    %al,(%rax)
 784:	00 00                	add    %al,(%rax)
 786:	00 00                	add    %al,(%rax)
 788:	01 7a 52             	add    %edi,0x52(%rdx)
 78b:	00 01                	add    %al,(%rcx)
 78d:	78 10                	js     79f <__GNU_EH_FRAME_HDR+0x9b>
 78f:	01 1b                	add    %ebx,(%rbx)
 791:	0c 07                	or     $0x7,%al
 793:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
 799:	00 00                	add    %al,(%rax)
 79b:	00 1c 00             	add    %bl,(%rax,%rax,1)
 79e:	00 00                	add    %al,(%rax)
 7a0:	30 fd                	xor    %bh,%ch
 7a2:	ff                   	(bad)  
 7a3:	ff 10                	callq  *(%rax)
 7a5:	00 00                	add    %al,(%rax)
 7a7:	00 00                	add    %al,(%rax)
 7a9:	0e                   	(bad)  
 7aa:	10 46 0e             	adc    %al,0xe(%rsi)
 7ad:	18 4a 0f             	sbb    %cl,0xf(%rdx)
 7b0:	0b 77 08             	or     0x8(%rdi),%esi
 7b3:	80 00 3f             	addb   $0x3f,(%rax)
 7b6:	1a 3b                	sbb    (%rbx),%bh
 7b8:	2a 33                	sub    (%rbx),%dh
 7ba:	24 22                	and    $0x22,%al
 7bc:	00 00                	add    %al,(%rax)
 7be:	00 00                	add    %al,(%rax)
 7c0:	14 00                	adc    $0x0,%al
 7c2:	00 00                	add    %al,(%rax)
 7c4:	44 00 00             	add    %r8b,(%rax)
 7c7:	00 18                	add    %bl,(%rax)
 7c9:	fd                   	std    
 7ca:	ff                   	(bad)  
 7cb:	ff 08                	decl   (%rax)
	...
 7d5:	00 00                	add    %al,(%rax)
 7d7:	00 1c 00             	add    %bl,(%rax,%rax,1)
 7da:	00 00                	add    %al,(%rax)
 7dc:	5c                   	pop    %rsp
 7dd:	00 00                	add    %al,(%rax)
 7df:	00 1a                	add    %bl,(%rdx)
 7e1:	fe                   	(bad)  
 7e2:	ff                   	(bad)  
 7e3:	ff 16                	callq  *(%rsi)
 7e5:	00 00                	add    %al,(%rax)
 7e7:	00 00                	add    %al,(%rax)
 7e9:	41 0e                	rex.B (bad) 
 7eb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 7f1:	51                   	push   %rcx
 7f2:	0c 07                	or     $0x7,%al
 7f4:	08 00                	or     %al,(%rax)
 7f6:	00 00                	add    %al,(%rax)
 7f8:	1c 00                	sbb    $0x0,%al
 7fa:	00 00                	add    %al,(%rax)
 7fc:	7c 00                	jl     7fe <__GNU_EH_FRAME_HDR+0xfa>
 7fe:	00 00                	add    %al,(%rax)
 800:	10 fe                	adc    %bh,%dh
 802:	ff                   	(bad)  
 803:	ff 2e                	ljmp   *(%rsi)
 805:	00 00                	add    %al,(%rax)
 807:	00 00                	add    %al,(%rax)
 809:	41 0e                	rex.B (bad) 
 80b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 811:	69 0c 07 08 00 00 00 	imul   $0x8,(%rdi,%rax,1),%ecx
 818:	1c 00                	sbb    $0x0,%al
 81a:	00 00                	add    %al,(%rax)
 81c:	9c                   	pushfq 
 81d:	00 00                	add    %al,(%rax)
 81f:	00 1e                	add    %bl,(%rsi)
 821:	fe                   	(bad)  
 822:	ff                   	(bad)  
 823:	ff 37                	pushq  (%rdi)
 825:	00 00                	add    %al,(%rax)
 827:	00 00                	add    %al,(%rax)
 829:	41 0e                	rex.B (bad) 
 82b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 831:	72 0c                	jb     83f <__GNU_EH_FRAME_HDR+0x13b>
 833:	07                   	(bad)  
 834:	08 00                	or     %al,(%rax)
 836:	00 00                	add    %al,(%rax)
 838:	44 00 00             	add    %r8b,(%rax)
 83b:	00 bc 00 00 00 40 fe 	add    %bh,-0x1c00000(%rax,%rax,1)
 842:	ff                   	(bad)  
 843:	ff 65 00             	jmpq   *0x0(%rbp)
 846:	00 00                	add    %al,(%rax)
 848:	00 42 0e             	add    %al,0xe(%rdx)
 84b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
 851:	8e 03                	mov    (%rbx),%es
 853:	45 0e                	rex.RB (bad) 
 855:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
 85b:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff863016a9 <__TMC_END__+0xffffffff86100681>
 861:	06                   	(bad)  
 862:	48 0e                	rex.W (bad) 
 864:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
 86a:	72 0e                	jb     87a <__GNU_EH_FRAME_HDR+0x176>
 86c:	38 41 0e             	cmp    %al,0xe(%rcx)
 86f:	30 41 0e             	xor    %al,0xe(%rcx)
 872:	28 42 0e             	sub    %al,0xe(%rdx)
 875:	20 42 0e             	and    %al,0xe(%rdx)
 878:	18 42 0e             	sbb    %al,0xe(%rdx)
 87b:	10 42 0e             	adc    %al,0xe(%rdx)
 87e:	08 00                	or     %al,(%rax)
 880:	10 00                	adc    %al,(%rax)
 882:	00 00                	add    %al,(%rax)
 884:	04 01                	add    $0x1,%al
 886:	00 00                	add    %al,(%rax)
 888:	68 fe ff ff 02       	pushq  $0x2fffffe
 88d:	00 00                	add    %al,(%rax)
 88f:	00 00                	add    %al,(%rax)
 891:	00 00                	add    %al,(%rax)
	...

0000000000000894 <__FRAME_END__>:
 894:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000200df0 <__frame_dummy_init_array_entry>:
  200df0:	f0 05 00 00 00 00    	lock add $0x0,%eax
	...

Disassembly of section .fini_array:

0000000000200df8 <__do_global_dtors_aux_fini_array_entry>:
  200df8:	b0 05                	mov    $0x5,%al
  200dfa:	00 00                	add    %al,(%rax)
  200dfc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000200e00 <_DYNAMIC>:
  200e00:	01 00                	add    %eax,(%rax)
  200e02:	00 00                	add    %al,(%rax)
  200e04:	00 00                	add    %al,(%rax)
  200e06:	00 00                	add    %al,(%rax)
  200e08:	01 00                	add    %eax,(%rax)
  200e0a:	00 00                	add    %al,(%rax)
  200e0c:	00 00                	add    %al,(%rax)
  200e0e:	00 00                	add    %al,(%rax)
  200e10:	0c 00                	or     $0x0,%al
  200e12:	00 00                	add    %al,(%rax)
  200e14:	00 00                	add    %al,(%rax)
  200e16:	00 00                	add    %al,(%rax)
  200e18:	b8 04 00 00 00       	mov    $0x4,%eax
  200e1d:	00 00                	add    %al,(%rax)
  200e1f:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 200e25 <_DYNAMIC+0x25>
  200e25:	00 00                	add    %al,(%rax)
  200e27:	00 f4                	add    %dh,%ah
  200e29:	06                   	(bad)  
  200e2a:	00 00                	add    %al,(%rax)
  200e2c:	00 00                	add    %al,(%rax)
  200e2e:	00 00                	add    %al,(%rax)
  200e30:	19 00                	sbb    %eax,(%rax)
  200e32:	00 00                	add    %al,(%rax)
  200e34:	00 00                	add    %al,(%rax)
  200e36:	00 00                	add    %al,(%rax)
  200e38:	f0 0d 20 00 00 00    	lock or $0x20,%eax
  200e3e:	00 00                	add    %al,(%rax)
  200e40:	1b 00                	sbb    (%rax),%eax
  200e42:	00 00                	add    %al,(%rax)
  200e44:	00 00                	add    %al,(%rax)
  200e46:	00 00                	add    %al,(%rax)
  200e48:	08 00                	or     %al,(%rax)
  200e4a:	00 00                	add    %al,(%rax)
  200e4c:	00 00                	add    %al,(%rax)
  200e4e:	00 00                	add    %al,(%rax)
  200e50:	1a 00                	sbb    (%rax),%al
  200e52:	00 00                	add    %al,(%rax)
  200e54:	00 00                	add    %al,(%rax)
  200e56:	00 00                	add    %al,(%rax)
  200e58:	f8                   	clc    
  200e59:	0d 20 00 00 00       	or     $0x20,%eax
  200e5e:	00 00                	add    %al,(%rax)
  200e60:	1c 00                	sbb    $0x0,%al
  200e62:	00 00                	add    %al,(%rax)
  200e64:	00 00                	add    %al,(%rax)
  200e66:	00 00                	add    %al,(%rax)
  200e68:	08 00                	or     %al,(%rax)
  200e6a:	00 00                	add    %al,(%rax)
  200e6c:	00 00                	add    %al,(%rax)
  200e6e:	00 00                	add    %al,(%rax)
  200e70:	f5                   	cmc    
  200e71:	fe                   	(bad)  
  200e72:	ff 6f 00             	ljmp   *0x0(%rdi)
  200e75:	00 00                	add    %al,(%rax)
  200e77:	00 98 02 00 00 00    	add    %bl,0x2(%rax)
  200e7d:	00 00                	add    %al,(%rax)
  200e7f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 200e85 <_DYNAMIC+0x85>
  200e85:	00 00                	add    %al,(%rax)
  200e87:	00 48 03             	add    %cl,0x3(%rax)
  200e8a:	00 00                	add    %al,(%rax)
  200e8c:	00 00                	add    %al,(%rax)
  200e8e:	00 00                	add    %al,(%rax)
  200e90:	06                   	(bad)  
  200e91:	00 00                	add    %al,(%rax)
  200e93:	00 00                	add    %al,(%rax)
  200e95:	00 00                	add    %al,(%rax)
  200e97:	00 b8 02 00 00 00    	add    %bh,0x2(%rax)
  200e9d:	00 00                	add    %al,(%rax)
  200e9f:	00 0a                	add    %cl,(%rdx)
  200ea1:	00 00                	add    %al,(%rax)
  200ea3:	00 00                	add    %al,(%rax)
  200ea5:	00 00                	add    %al,(%rax)
  200ea7:	00 7d 00             	add    %bh,0x0(%rbp)
  200eaa:	00 00                	add    %al,(%rax)
  200eac:	00 00                	add    %al,(%rax)
  200eae:	00 00                	add    %al,(%rax)
  200eb0:	0b 00                	or     (%rax),%eax
  200eb2:	00 00                	add    %al,(%rax)
  200eb4:	00 00                	add    %al,(%rax)
  200eb6:	00 00                	add    %al,(%rax)
  200eb8:	18 00                	sbb    %al,(%rax)
  200eba:	00 00                	add    %al,(%rax)
  200ebc:	00 00                	add    %al,(%rax)
  200ebe:	00 00                	add    %al,(%rax)
  200ec0:	15 00 00 00 00       	adc    $0x0,%eax
	...
  200ecd:	00 00                	add    %al,(%rax)
  200ecf:	00 03                	add    %al,(%rbx)
  200ed1:	00 00                	add    %al,(%rax)
  200ed3:	00 00                	add    %al,(%rax)
  200ed5:	00 00                	add    %al,(%rax)
  200ed7:	00 c0                	add    %al,%al
  200ed9:	0f 20 00             	mov    %cr0,%rax
  200edc:	00 00                	add    %al,(%rax)
  200ede:	00 00                	add    %al,(%rax)
  200ee0:	07                   	(bad)  
  200ee1:	00 00                	add    %al,(%rax)
  200ee3:	00 00                	add    %al,(%rax)
  200ee5:	00 00                	add    %al,(%rax)
  200ee7:	00 f8                	add    %bh,%al
  200ee9:	03 00                	add    (%rax),%eax
  200eeb:	00 00                	add    %al,(%rax)
  200eed:	00 00                	add    %al,(%rax)
  200eef:	00 08                	add    %cl,(%rax)
  200ef1:	00 00                	add    %al,(%rax)
  200ef3:	00 00                	add    %al,(%rax)
  200ef5:	00 00                	add    %al,(%rax)
  200ef7:	00 c0                	add    %al,%al
  200ef9:	00 00                	add    %al,(%rax)
  200efb:	00 00                	add    %al,(%rax)
  200efd:	00 00                	add    %al,(%rax)
  200eff:	00 09                	add    %cl,(%rcx)
  200f01:	00 00                	add    %al,(%rax)
  200f03:	00 00                	add    %al,(%rax)
  200f05:	00 00                	add    %al,(%rax)
  200f07:	00 18                	add    %bl,(%rax)
  200f09:	00 00                	add    %al,(%rax)
  200f0b:	00 00                	add    %al,(%rax)
  200f0d:	00 00                	add    %al,(%rax)
  200f0f:	00 1e                	add    %bl,(%rsi)
  200f11:	00 00                	add    %al,(%rax)
  200f13:	00 00                	add    %al,(%rax)
  200f15:	00 00                	add    %al,(%rax)
  200f17:	00 08                	add    %cl,(%rax)
  200f19:	00 00                	add    %al,(%rax)
  200f1b:	00 00                	add    %al,(%rax)
  200f1d:	00 00                	add    %al,(%rax)
  200f1f:	00 fb                	add    %bh,%bl
  200f21:	ff                   	(bad)  
  200f22:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f25:	00 00                	add    %al,(%rax)
  200f27:	00 01                	add    %al,(%rcx)
  200f29:	00 00                	add    %al,(%rax)
  200f2b:	08 00                	or     %al,(%rax)
  200f2d:	00 00                	add    %al,(%rax)
  200f2f:	00 fe                	add    %bh,%dh
  200f31:	ff                   	(bad)  
  200f32:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f35:	00 00                	add    %al,(%rax)
  200f37:	00 d8                	add    %bl,%al
  200f39:	03 00                	add    (%rax),%eax
  200f3b:	00 00                	add    %al,(%rax)
  200f3d:	00 00                	add    %al,(%rax)
  200f3f:	00 ff                	add    %bh,%bh
  200f41:	ff                   	(bad)  
  200f42:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f45:	00 00                	add    %al,(%rax)
  200f47:	00 01                	add    %al,(%rcx)
  200f49:	00 00                	add    %al,(%rax)
  200f4b:	00 00                	add    %al,(%rax)
  200f4d:	00 00                	add    %al,(%rax)
  200f4f:	00 f0                	add    %dh,%al
  200f51:	ff                   	(bad)  
  200f52:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f55:	00 00                	add    %al,(%rax)
  200f57:	00 c6                	add    %al,%dh
  200f59:	03 00                	add    (%rax),%eax
  200f5b:	00 00                	add    %al,(%rax)
  200f5d:	00 00                	add    %al,(%rax)
  200f5f:	00 f9                	add    %bh,%cl
  200f61:	ff                   	(bad)  
  200f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f65:	00 00                	add    %al,(%rax)
  200f67:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000200fc0 <_GLOBAL_OFFSET_TABLE_>:
  200fc0:	00 0e                	add    %cl,(%rsi)
  200fc2:	20 00                	and    %al,(%rax)
	...

Disassembly of section .data:

0000000000201000 <__data_start>:
	...

0000000000201008 <__dso_handle>:
  201008:	08 10                	or     %dl,(%rax)
  20100a:	20 00                	and    %al,(%rax)
  20100c:	00 00                	add    %al,(%rax)
	...

0000000000201010 <q>:
  201010:	5a                   	pop    %rdx
  201011:	00 00                	add    %al,(%rax)
	...

0000000000201014 <t1>:
  201014:	01 00                	add    %eax,(%rax)
	...

0000000000201018 <t2>:
  201018:	02 00                	add    (%rax),%al
	...

000000000020101c <t3>:
  20101c:	03 00                	add    (%rax),%eax
	...

0000000000201020 <t4>:
  201020:	04 00                	add    $0x0,%al
	...

Disassembly of section .bss:

0000000000201024 <__bss_start>:
  201024:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x440>
   a:	74 75                	je     81 <_init-0x437>
   c:	20 37                	and    %dh,(%rdi)
   e:	2e 34 2e             	cs xor $0x2e,%al
  11:	30 2d 31 75 62 75    	xor    %ch,0x75627531(%rip)        # 75627548 <__TMC_END__+0x75426520>
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0x429>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	38 2e                	cmp    %ch,(%rsi)
  1f:	30 34 29             	xor    %dh,(%rcx,%rbp,1)
  22:	20 37                	and    %dh,(%rdi)
  24:	2e 34 2e             	cs xor $0x2e,%al
  27:	30 00                	xor    %al,(%rax)
