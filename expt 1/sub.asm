.model small
.data
a db 23h
b db 13h
diff db ?
bor db ?
.code
start:
mov ax,@data
mov ds,ax
mov al,a
sub al,b
mov diff,al
mov al,00h
sbb al,00h
mov bor,al
mov ah,4ch
int 21h
end start