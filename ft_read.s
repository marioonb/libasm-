SECTION .TEXT
	GLOBAL	ft_read

ft_read :
		mov rax, 0
        mov rcx, 0 

; fd -> rdi, buff -> rsi, size -> rdx 

verif fd :
    cmp rdi, 0
    je error

fonction :
    cmp rdx, rcx
    jl end
    mov BYTE[rsi + rcx], dl
    ; entrer dl sur entree
    inc rcx

error : 
    

end 
    leave 