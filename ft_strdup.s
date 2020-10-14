SECTION .TEXT
	GLOBAL	ft_strdup

extern ft_strcpy
extern ft_strlen;
extern malloc

ft_strdup :
    call ft_strlen      ; appel de strlen avec rdi 
    inc rax             ; rax = taille de la string, on incremente pour le /0
    mov rbx, rdi        ; j aurai pu utiliser la pile en pushant rdi / ici pose de rbx sur la valeur de rdi 
    mov rdi, rax        ; rdi recupere la taille
    call malloc         ; appel de malloc avec rdi 
    cmp rax, 0          ; verifie si le retour de malloc = 0 
    je malloctest       ; jump a malloctest si null   
    mov rsi, rbx        ; la valeur de rbx donc la chaine, mis dans rsi  
    mov rdi, rax        ; rdi prend la valeur de rax donc le malloc cre
    call ft_strcpy      ; apel de strcpy avec rdi et rsi 
    ret                 ; retour rax renvoye par strcpy 

malloctest : 
    mov rax, 0          ; rax prend 0
    ret                 ; retour de rax docn de 0
