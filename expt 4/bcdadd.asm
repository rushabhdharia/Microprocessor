.model small
.data
a dw 1554h
b dw 4357h
sum dw ?
carry db ?
.code
start:
mov ax,@data
mov ds,ax

mov ax,a
mov bx,b
add al,bl
daa
mov cl,al
mov al,ah
adc al,bh
daa
mov ch,al
mov sum,cx
mov al,00h
adc al,00h
mov carry,al


mov ah,4ch
int 21h
end start