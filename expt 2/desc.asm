.model small
.data
arr db 12h, 15h, 1, 13h, 10h, 9, 25h
count dw 6
.code 
start:
mov ax,@data
mov ds,ax

mov cx,count
agn: lea bx,arr
mov dx,count
agn2: mov al, [bx]
inc bx
cmp al,[bx]
jnc over
xchg al,[bx]
mov [bx-1],al
over:dec dx
jnz agn2
loop agn
	
mov ah,4ch
int 21h 
end start