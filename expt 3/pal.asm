.model small
.data
arr1 db "nitin"
arr2 db 10 dup(?)
count dw 5
check db 0
.code
start:
mov ax,@data
mov ds,ax
mov es,ax
lea si,arr1
lea di,arr2
mov cx,count
add di,cx
dec di
agn: cld
lodsb
std
stosb
loop agn
lea si,arr1
lea di,arr2
mov cx,count
cld
repe cmpsb
jnz over
mov check,1
over: mov ah,4ch
int 21h
end start