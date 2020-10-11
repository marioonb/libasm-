SECTION .TEXT 
    GLOBAL ft_strcpy


ft_strcpy :
		mov rax, 0
        mov rcx, 0

while : 
    cmp Byte [rsi + rax], 0
    je end
    mov dl, Byte[]
    
    mov  
    mov 
    inc rax 
    jmp ft_strcpy

end 

 mov BYTE [rdi + rax], 0
 ret