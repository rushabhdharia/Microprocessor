.model small
.data
a db 39h
b db 39h
prod dw ?
.code 
start:
mov ax,@data
mov ds,ax
mov al,a
mov bl,b
sub al,30h
sub bl,30h
mul bl
aam
add ax,3030h
mov prod,ax
mov ah,4ch
int 21h
end start