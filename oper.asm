.model small
.stack
.data
n1 db 0
n2 db 0
r db 0
msg1 db 10,13,7,'suma:','$'
msg2 db 10,13,7,'resta:','$'
msg3 db 10,13,7,'mult:','$'
msg4 db 10,13,7,'div:','$'
msg0 db 10,13,7,'Ingresa un numero:','$'

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

mov al, n1
add al, n2 ;suma
mov r, al

mov ah, 09h
lea dx, msg1
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

mov al, n1
sub al, n2 ;resta
mov r, al

mov ah, 09h
lea dx, msg2
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

mov al, n1
mov bl, n2
mul bl ;se esta realizando multiplicacion
mov r, al

mov ah, 09h
lea dx, msg3
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

;division
xor ax,ax

mov al, n1
mov bl,n2
div bl ;divicions
mov r, al

mov ah, 09h
lea dx, msg4
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

.exit
end
