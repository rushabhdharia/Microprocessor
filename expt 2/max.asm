.model small
.data
arr db 6,2,5,1,12h,15h,19h,4,9,7
max db ?
count dw 10
.code
start:
mov ax,@data
mov ds,ax
mov cx,count
lea si,arr
mov al,[si]
inc si
dec cx
back :
cmp [si],al
jc l1
mov al,[si]
l1:
inc si
loop back
mov max,al
mov ah,4ch
int 21h
end start