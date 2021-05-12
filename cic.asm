.model small
.stack 100
.data


Verso1 db 20 dup(' '),'$'
pregunta db ' Que quieres imprimir: ','$'
conta db 2

.code

mov ax,@data
mov ds,ax

;limpiar la pantalla

mov ah, 00
mov al, 03h
int 10h

ciclo:   ; inicia ciclo

mov ah,02h ; peticion para color el cursor
mov dh, 0 ; direccionamiento para la fila
mov dl, 0 ; direccionamiento para la columna
int 10h    ; interuppcion ejecuta la instruccion

mov ah,09h; funcion para imprimir una cadena
lea dx, pregunta; cargar a dx loque hay en msg
int 21h; imprimir la cadena

mov ah, 3fh
mov bx, 00
mov cx, 120
mov dx, offset [Verso1]
int 21h

inc conta

mov ah,02h ; peticion para color el cursor
mov dh, conta ; direccionamiento para la fila
mov dl, conta ; direccionamiento para la columna
int 10h    ; interuppcion ejecuta la instruccion


mov dx, 000; ESPACIO
mov ah, 02h
int 21h


mov ah,09h; funcion para imprimir una cadena
lea dx, Verso1; cargar a dx loque hay en msg
int 21h; imprimir la cadena

cmp conta, 7 ;if conta=5
jz fin
jmp ciclo

fin:
mov ah, 0 ;peticion para hacer una pausa o espera
int 16h   ; aque presiones una tecla
;ret       ; aqui finaliza nuestro progrma

.exit
end
