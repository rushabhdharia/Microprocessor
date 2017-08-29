.model small
.data
a dw 2020h
b dw 1010h
diff dw ?
bor db ?
.code 
start:
mov ax,@data
mov ds,ax
mov ax,a
sub ax,b
mov diff,ax
mov al,00h
sbb al,00h
mov bor,al
mov ah,4ch 
int 21h
end start