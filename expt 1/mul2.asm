.model small
.data
a dw 2120h
b dw 3120h
prd dd ?
.code
start:
mov ax,@data
mov ds,ax
mov ax,a
mul b
lea bx,prd
mov [bx],ax
mov [bx+2],dx
mov ah,4ch
int 21h
end start