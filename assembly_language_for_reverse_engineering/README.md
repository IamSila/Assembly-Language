# hollowing out a function

- `push ebp` : marks the start of a function
- after push ebp there mus be `mov ebp, esp` which prepares the fnction for use.
- This is called the `function prologue`.
# 
- `ret` : Marks the end of a function
- Before ret there must be `leave` instruction.
- This is called `function epilogue`.

#
`nop` means no operation.

# REGISTERS
## General Purpose Registers.
- They include the following:
`EAX, EBX, ECX, EDX.`
- Their memory structure looks like the following:
```EAX
    eax (32bit) -> AX (16 bit) -> al(8 bits) and ah(8 bits)

all the above have this structure.

they are 32 bit registers.
e.g if we have 0x12345678 for EAX
ax would contain -> 5678
ah (higher byte of ax) -> 56
al (lower byte of ax) -> 78

The same concept applies to all the above 32 bit registers.
``` 

## 64 bit registers.
- include the following ` RAX, RBX, RCX, RDX`.

```
    RAX (64 bit) -> eax (32 bit) -> ah(8 bits) and al(8 bits)
    same concept for all the other 64 bit registers
```

## Other registers
### stack frame registers
- `esp` - stack pointer: points to the top of the stack memory.
- `ebp` - base pointer: points to the bottom of the stack.

### String index pointer
- `esi` - source register: stores the source operand.
```
    memory layout of esi
    esi (32 bit) -> si(16 bit)
```
- `edi` - destination pointer: destination operand.
```
    memory layout of edi
    edi (32 bit) -> di (16 bit)
```

### Instruction register
- Points to the current memory location.
- Points at the current instruction being executed.
- `esi` is the exact register used.
