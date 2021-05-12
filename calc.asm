.model small
.stack
.data
n1 db 0
n2 db 0
r db 0
msg db 10,13,7,'mult:','$'
msg0 db 10,13,7,'Ingresa un numero:','$'
conta db 1

.code
mov ax, seg @data
mov ds, ax

mov ah, 09h
lea dx, msg0
int 21h

mov ah, 01h    ;captura del numero 1
int 21h
sub al, 30h
mov n1,al

mov ah, 09h
lea dx, msg0
int 21h

mov ah, 01h    ;captura del numero 2
int 21h
sub al, 30h
mov n2,al


;--------------------------------------------------------------------------------

ciclo:

mov al, n1
mov bl, conta
mul bl ;se esta realizando multiplicacion
mov r, al

mov ah, 09h
lea dx, msg
int 21h

mov al,r
aam      ;desempacado
mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl
add dl,30h
int 21h

cmp conta, 10 ;if conta=10
jz fin
jmp ciclo
fin:

.exit
end
