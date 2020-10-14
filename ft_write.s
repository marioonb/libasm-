SECTION .TEXT
	GLOBAL	ft_write

extern __errno_location

ft_write :
		mov rax, 1
        syscall
        cmp rax, 0   ; conpare a 0
        jl error             ; si plus petit que 0 jmp error
        ret 

error : 
    neg rax         
    mov rdx, rax 
    call __errno_location   ; mettre un pointeur sur errno dans rax 
    mov [rax], rdx          ; mettre la valeur du pointeur dans rdx
    mov rax, -1             ; mettre rax a -1 pour renvoyer l erreur 
    ret 