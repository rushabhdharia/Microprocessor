.model small
.data
a dw 4357h
b dw 1554h
res dw ?
borrow db ?
.code
start:
mov ax,@data
mov ds,ax

mov ax,a
mov bx,b
sub al,bl
das
mov cl,al
mov al,ah
sbb al,bh
das
mov ch,al
mov res,cx
mov al,00h
sbb al,00h
mov borrow,al


mov ah,4ch
int 21h
end start