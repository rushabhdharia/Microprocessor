.model small
.data
a dw 20h
b db 10h
res db ?
rem db ?
.code
start:
mov ax,@data
mov ds,ax
mov ax,a
div b
mov res,al
mov rem,ah
mov ah,4ch
int 21h
end start