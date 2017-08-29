.model small
.data
ipstr db "Enter a string:$"
opstr db "Entered string is:$"
inp db 50, ?, 50 dup('$')
nxtlin db 10,13,'$'
.code 
start:
mov ax,@data
mov ds,ax
lea dx,ipstr
mov ah,09h
int 21h
lea dx,inp
mov ah,0ah
int 21h
lea dx,nxtlin
mov ah,09h
int 21h
lea dx,opstr
int 21h
lea dx,[inp+2]
int 21h
mov ah,4ch
int 21h
end start