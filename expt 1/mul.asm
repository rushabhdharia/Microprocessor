.model small
.data
a db 4
b db 4
prd dw ?
.code
start:
mov ax,@data
mov ds,ax
mov al,a
mul b
mov prd,ax

mov ah,4ch
int 21h
end start