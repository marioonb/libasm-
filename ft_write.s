SECTION .TEXT
	GLOBAL	ft_write

ft_write :
		mov rax, 0
        mov rcx, 0 

; fd -> rdi, buff -> rsi, size -> rdx 

verif fd :
    cmp rdi, 1
    je error

fonction :
    cmp rdx, rcx
    jl end
    mov BYTE[rsi + rcx], dl
    ; sortir dl sur sortie
    inc rcx

error : 
    

end 
    leave 