SECTION .TEXT
	GLOBAL	ft_strlen

ft_strlen :
		mov rax, 0

while :
		cmp byte[rdi+rax], 0			; compare chaine[rax] a 0
		je end							; si = 0 va a la fin
		inc rax							; sinon increment rax
		jmp while						; retourne a while

end :
	ret									; retourne rax
