.model small
.data
a db "Enter 1st no: $"
b db 10,13,"Enter 2nd no: $"
c db 10,13,"Result: $"
d db 48

.code
start:
mov ax,@data
mov ds,ax
lea dx,a
mov ah,09h
int 21h
mov ah,01h
int 21h
mov bl,al

lea dx,b
mov ah,09h
int 21h
mov ah,01h
int 21h
mov cl,al

add cl,bl
sub cl,d
lea dx,c
mov ah,09h
int 21h

mov dl,cl
mov ah,02h
int 21h
mov ah,4ch
int 21h
end start
