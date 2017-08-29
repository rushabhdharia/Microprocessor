.model small
.data
a db -31h
b db 15h
quo db ?
rem db ?
.code
start:
mov ax, @data
mov ds, ax
mov al, a
cbw
idiv b
mov quo, al
mov rem, ah
mov ah, 4ch
int 21h
end start