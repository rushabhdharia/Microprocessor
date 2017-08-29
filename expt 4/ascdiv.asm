.model small
.data
a dw 3430h
b db 39h
quo db ?
rem db ?
.code 
start:
mov ax,@data
mov ds,ax
mov ax,a
mov bl,b
sub ax,3030h
sub bl,30h
aad
div bl
add ah,30h
mov rem,ah
add al,30h
mov quo,al
mov ah,4ch
int 21h
end start