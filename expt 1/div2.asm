.model small
.data
a dd 85h
b dw 5h
res dw ?
rem dw ?
.code
start:
mov ax,@data
mov ds,ax
lea bx,a
mov ax,[bx]
mov dx,[bx+2]
div b
mov res,ax
mov rem,dx
mov ah,4ch
int 21h
end start