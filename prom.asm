.model small
.stack
.data
n1 db 0
n2 db 0
n3 db 0
r db 0
msg0 db 10,13,7,'Ingresa la calificacion:','$'
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



.exit
end
