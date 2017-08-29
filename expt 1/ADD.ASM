.model small
.data
a db 13
b db 20
sum db ?
carry db ?
.code
start:
mov ax,@data
mov ds,ax
mov al,a
add al,b
mov sum,al
mov al,00h
adc al,00h
mov carry,al
mov ah,4ch
int 21h
end start