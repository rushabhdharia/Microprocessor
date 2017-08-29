.model small
.data
a dw 3939h
b db 39h
sum dw ?
carry dw ?
.code 
start:
mov ax,@data
mov ds,ax
mov ax,a
mov bl,b
sub ax,3030h
sub bl,30h
add al,bl
aaa
add ax,3030h
mov sum,ax
mov ah,4ch
int 21h
end start