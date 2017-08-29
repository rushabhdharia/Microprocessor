#include<stdio.h>
#include<conio.h>

void main()
{
int a,b,c;
clrscr();
printf("Enter 2 numbers:");
scanf("%d%d",&a,&b);
asm{
mov ax,a
mov cx,b
rol ax,cl
mov c,ax
}
printf("%d",c);
getch();
}