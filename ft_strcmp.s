SECTION .TEXT
    GLOBAL ft_strcmp 

ft_strcmp :
		mov rax, 0
        mov rcx, 0

verif :
        cmp BYTE [rdi + rax], 0              ; regarde si s1 est null 
        mov rcx, 1                           ; met rcx a 1 si oui 
        cmp BYTE[rdx + rax], 0               ; regarde si s2 est null
        mov rcx, 1                           ; met rcx a 1 si oui 

while : 
    cmp rcx, 0                              ; regarde si rcx est a 0
    je end                                  ; si il est = a 0, il va a la fin et renvoi rax
    mov dl, BYTE [rdi + rax]                ; met la valeur de s1 dans dl    
    cmp BYTE [rdx + rax], dl                ; conpare s2 et s1 donc byte et dl
    je inc                                  ; si elles sont egales il ca a inc
    jmp end2                                ; sinon il va a end2

inc :
    inc rax                                 ; il increment rax 
    jmp while                               ; et recommence au debut 

end2 :
    sub dl, BYTE[rdx + rax]                 ; il sousstrait s2 a s1 dans s1 soit dl 
    movsx rax, dl                           ; met s1 dns rax donc dl dans rax, pkoi movsx ??
    ret                                     ; retourne rax

end :
    mov rax, 0                               ; remet rax a 0 avant de l'envoyer
    ret                                      ; renvoi rax donc 0
