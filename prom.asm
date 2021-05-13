.model small
.stack
.data
n1 db 0
n2 db 0
n3 db 0
r db 0
msg0 db 10,13,7,'Ingresa la calificacion:','$'
msg1 db 10,13,7,'suma: ','$'
msg2 db 10,13,7,'promedio: ','$'
conta db 1

.code
mov ax, seg @data
mov ds, ax

;captura de las 3 calificaciones----------------------------------------

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

mov ah, 01h    ;captura del numero 1
int 21h
sub al, 30h
mov n2,al

mov ah, 09h
lea dx, msg0
int 21h

mov ah, 01h    ;captura del numero 1
int 21h
sub al, 30h
mov n3,al
;-----------------------------------------------------------------------

mov al, n1
add al, n2 ;suma numero 1 + numero 2
mov al, n3
add al, n2 ;suma resultado de numero 1 + numero 2 y suma al numero 3
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

.exit
end
