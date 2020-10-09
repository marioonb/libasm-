SECTION .TEXT
	GLOBAL	ft_strlen

ft_strlen :
		mov rax, 0

while :
		cmp byte[rdi+rax], 0
		je end
		inc rax
		jmp while

end :
	ret
