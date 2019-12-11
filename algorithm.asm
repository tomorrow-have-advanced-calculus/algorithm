00000000000006b0 <power>:
 6b0:	55                   	push   %rbp
 6b1:	48 89 e5             	mov    %rsp,%rbp
 6b4:	89 7d ec             	mov    %edi,-0x14(%rbp)
 6b7:	89 75 e8             	mov    %esi,-0x18(%rbp)
 6ba:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
 6c1:	eb 0e                	jmp    6d1 <power+0x21>
 6c3:	8b 45 fc             	mov    -0x4(%rbp),%eax
 6c6:	0f af 45 ec          	imul   -0x14(%rbp),%eax
 6ca:	89 45 fc             	mov    %eax,-0x4(%rbp)
 6cd:	83 6d e8 01          	subl   $0x1,-0x18(%rbp)
 6d1:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
 6d5:	7f ec                	jg     6c3 <power+0x13>
 6d7:	8b 45 fc             	mov    -0x4(%rbp),%eax
 6da:	5d                   	pop    %rbp
 6db:	c3                   	retq   

00000000000006dc <algorithm>:
 6dc:	55                   	push   %rbp
 6dd:	48 89 e5             	mov    %rsp,%rbp
 6e0:	48 83 ec 30          	sub    $0x30,%rsp
 6e4:	89 7d dc             	mov    %edi,-0x24(%rbp)
 6e7:	89 75 d8             	mov    %esi,-0x28(%rbp)
 6ea:	89 55 d4             	mov    %edx,-0x2c(%rbp)
 6ed:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
 6f4:	8b 45 dc             	mov    -0x24(%rbp),%eax
 6f7:	89 45 f0             	mov    %eax,-0x10(%rbp)
 6fa:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
 701:	eb 2b                	jmp    72e <algorithm+0x52>
 703:	8b 45 f4             	mov    -0xc(%rbp),%eax
 706:	3b 45 d8             	cmp    -0x28(%rbp),%eax
 709:	75 15                	jne    720 <algorithm+0x44>
 70b:	8b 45 f0             	mov    -0x10(%rbp),%eax
 70e:	99                   	cltd   
 70f:	f7 7d d4             	idivl  -0x2c(%rbp)
 712:	89 d0                	mov    %edx,%eax
 714:	0f af 45 ec          	imul   -0x14(%rbp),%eax
 718:	99                   	cltd   
 719:	f7 7d d4             	idivl  -0x2c(%rbp)
 71c:	89 d0                	mov    %edx,%eax
 71e:	eb 59                	jmp    779 <algorithm+0x9d>
 720:	8b 45 f0             	mov    -0x10(%rbp),%eax
 723:	0f af 45 dc          	imul   -0x24(%rbp),%eax
 727:	89 45 f0             	mov    %eax,-0x10(%rbp)
 72a:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
 72e:	8b 45 f0             	mov    -0x10(%rbp),%eax
 731:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
 734:	7c cd                	jl     703 <algorithm+0x27>
 736:	8b 45 d8             	mov    -0x28(%rbp),%eax
 739:	99                   	cltd   
 73a:	f7 7d f4             	idivl  -0xc(%rbp)
 73d:	89 55 f8             	mov    %edx,-0x8(%rbp)
 740:	8b 45 d8             	mov    -0x28(%rbp),%eax
 743:	99                   	cltd   
 744:	f7 7d f4             	idivl  -0xc(%rbp)
 747:	89 45 fc             	mov    %eax,-0x4(%rbp)
 74a:	8b 55 f8             	mov    -0x8(%rbp),%edx
 74d:	8b 45 dc             	mov    -0x24(%rbp),%eax
 750:	89 d6                	mov    %edx,%esi
 752:	89 c7                	mov    %eax,%edi
 754:	e8 57 ff ff ff       	callq  6b0 <power>
 759:	0f af 45 ec          	imul   -0x14(%rbp),%eax
 75d:	99                   	cltd   
 75e:	f7 7d d4             	idivl  -0x2c(%rbp)
 761:	89 55 ec             	mov    %edx,-0x14(%rbp)
 764:	8b 45 f0             	mov    -0x10(%rbp),%eax
 767:	99                   	cltd   
 768:	f7 7d d4             	idivl  -0x2c(%rbp)
 76b:	89 55 dc             	mov    %edx,-0x24(%rbp)
 76e:	8b 45 fc             	mov    -0x4(%rbp),%eax
 771:	89 45 d8             	mov    %eax,-0x28(%rbp)
 774:	e9 7b ff ff ff       	jmpq   6f4 <algorithm+0x18>
 779:	c9                   	leaveq 
 77a:	c3                   	retq   
