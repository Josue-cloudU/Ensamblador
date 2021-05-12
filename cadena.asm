.model small
.stack 100
.data
msg db 'hola mundo$'
.code
;inicializacion de variables
mov ax, @data
mov ds,ax

mov ah, 09h ;funcion para imprimir una cadena
lea dx, msg;carga a dx lo que hay en msg
int 21h ;imprime la cadena

.exit
end
