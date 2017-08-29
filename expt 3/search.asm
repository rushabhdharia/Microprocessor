.model small
.data
arr db 1,2,3,4,5,6
key db 3
index dw ?
count dw 6
.code
start:
mov ax,@data
mov ds,ax
mov es,ax
lea di,arr
mov al,key
mov cx,count
cld
repnz scasb
lea bx,arr
sub di,bx
mov index,di
mov ah,4ch
int 21h
end start