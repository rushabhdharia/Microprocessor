.model small
.data
a dw 3939h
b db 39h
res dw ?
.code 
start:
mov ax,@data
mov ds,ax
mov ax,a
mov bl,b
sub ax,3030h
sub bl,30h
sub al,bl
aas
add ax,3030h
mov res,ax
mov ah,4ch
int 21h
end start