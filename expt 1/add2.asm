.model small
.data
a dw 1020h
b dw 2010h
res dw ?
carry db ?
.code
start:
mov ax,@data
mov ds,ax
mov ax,a
add ax,b
mov res,ax
mov al,00h
adc al,00h
mov carry,al
mov ah,4ch
int 21h
end start