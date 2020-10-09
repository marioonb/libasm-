global	init
section	.text

init :
		mov rax, 0

ft_strcpy : 

    cmp Byte [rsi + rax], 0
    je end
    mov 
    mov 
    inc rax 
    jmp ft_strcpy

end 
 mov BYTE [rdi + rax], 0
 ret