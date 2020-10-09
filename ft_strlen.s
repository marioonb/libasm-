
global	init
section	.text
init :
		mov rax, 0
ft_strlen :
		cmp byte[rdi+rax], 0
		jne end
		inc rax
		jmp ft_strlen

end :
	ret
