SECTION .TEXT 
    GLOBAL ft_strcpy

ft_strcpy :
        mov rax, 0

while : 
    cmp BYTE[rsi + rax], 0
    je end
    mov dl, BYTE[rsi + rax]
    mov BYTE [rdi + rax], dl 
    inc rax
    jmp while
    
end :
 mov BYTE [rdi + rax], 0 
 mov rax, rdi
 ret