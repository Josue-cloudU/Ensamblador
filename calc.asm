.model small
.stack
.data
n1 db 0
r db 0
msg db 10,13,7,' x ','$'
msg0 db 10,13,7,'Ingresa el numero:','$'
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
;--------------------------------------------------------------------------------

ciclo:

mov al, conta
mov bl, n1
mul bl ;se esta realizando multiplicacion
mov r, al

mov ah, 02h
mov dl, 0ah ; salto de linea
int 21h

mov al, conta
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

mov ah, 09h
lea dx, msg
int 21h

mov al,n1
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

mov dx,0 ;
mov ah,02h
int 21h

mov dx,061 ;=
mov ah,02h
int 21h

mov dx,0 ;
mov ah,02h
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

inc conta

cmp conta, 11 ;if conta=11
jz fin
jmp ciclo
fin:

.exit
end
