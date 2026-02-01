# mov instructions for use in the binary

```
    mov eax, OX3A ; eax - 32 bit 
    mov al, 0x8 ; al is lower part of ax...ax is one half of eax
    mov ebx, eax ; ebx is 32 bit register
    mov cx, bx ; bx is 16 bit, one half of ebx .. cx 16 bit one half of ecx which is 32 bit regiter.
    mov ah, cl
```

