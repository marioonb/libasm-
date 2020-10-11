SECTION .TEXT
GLOBAL ft_strcmp 

ft_strcmp :
    mov rax, 0
    mov dl, 0

verif_null :
    mov dl, BYTE [rdi + rax]            ; met la valeur de s1 dans dl
    cmp BYTE [rdi + rax], 0             ; regarde si s1[rax] est null 
    je soustraction                     ; si oui va etiquette soustraction
    cmp BYTE[rsi + rax], 0              ; regarde si s2 est null 
    je end2                             ; si oui va a l etiquette end2

test_diff : 
    cmp BYTE [rsi + rax], dl ; compare s1 et s2     ; compare s2[rax] et dl docn s1[rax]
    jne soustraction ; sinon tu vas a end 2         ; si different va a soustraction
    inc rax                                         ; sinon incremente rax
    jmp verif_null ; et recommence au debut         ; retourne a l etiquette verif

soustraction :
    sub dl, BYTE[rsi + rax]                  ; soustrait s2[rax] a dl donc s1[rax]

end2 :
    movsx rax, dl                   ; met dl donc s1[rax] dans rax
    ret                             ; retourne rax

end :
mov rax, 0                          ; remet rax a 0 avant de l'envoyer
ret                                 ; renvoi rax donc 0