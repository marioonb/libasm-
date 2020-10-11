syntaxe intel : instruction, destination, source


.bss variable non initialisé
.data variable initialisé
.text cde executable -> printf


**** les registes courants ****
ax -> Eax > rax registre accumulateur / operation arithmétique et stockage des retour d appel
bx -> Ebx > rbx registre de base / pointeur de données, calaculs sur les adresses
cx -> Ecx > rcx compteur / sert de compteur dans les boucles
dx -> Edx > rdx registre de donnée / operation arithmétiques et opérayion d entrée sorties, sert a storcker des donnees destinees a des fonctions

rax, rbx, rcx , rdx, rdi , rsi , rbp, rsp, r8, r9, ... ,r15 64 bits

**** les autres registres ****
si -> registre source
di

manipule la stack :
sp
bp

**** les instructions ***
mov -> met une valeur dans une registre
db -> declare un octet

ax se divise en ah/al

BITS 64

section .bss
	a resb 256 -> donne la taille de a (si resd -> multiplie par 4)
section .data
	hello db 'hello world\n' -> met hello world dans une variabel hello
	hello_lem equ $-hello -> recupere la taille la chaine dans hello
section .text
	global _start -> setup la memoire avant d appele le programme

_start :
	mov rax, 1
	mov rdi, 1
	mov rsi, hello
	mov rdx, 11 ou mov rdx, hello_lem
	syscall
		pour exit :
	mov rax, 123 -> rax = 3 maintenant
	mov [a], rax -> on met rax , donc 123 dans a
	mov rax, 60
	mov rdi, 0
	syscall

Les 6 premiers paramètres sont passés comme ça :
rdi (1er paramètre),
rsi (2),
rdx (3),
rcx (4),
r8 (5), r9(6).
Les registres rbx, rbp (naturellement), r12, r13, r14, r15 doivent être sauvegardés par la fonction appelée,
c'est à dire que, à la fin de ta fonction (au moment du ret) ils doivent avoir la même valeur qu'au début.
Tu as bien sûr le droit de les utiliser, mais tu dois alors sauvegarder leur valeur pour pouvoir la restituer.
Le retour se fait par le registre rax.

assemble -> nasm -f elf64 ft_strlen.s -o ft_strlen.o

gcc main.c nom ft_strlen.o