SECTION .TEXT
	GLOBAL	ft_write

extern __errno_location

ft_write :
		mov rax, 1
        syscall
        cmp rax, 0           ; compare a 0
        jl error             ; si plus petit que 0 jmp error
        ret 

error : 
    neg rax         
    mov rdx, rax 
    call __errno_location   ; mettre un pointeur sur errno dans rax (recupere l'adresse d'ernno) 
    mov [rax], rdx          ; met la valeur de l erreur dans errno 
    mov rax, -1             ; mettre rax a -1 pour renvoyer l erreur 
    ret 