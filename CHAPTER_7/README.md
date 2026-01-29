# CHAPTER 7: INSTRUCTION SET OVERVIEW.
- Focus is on x86-64 instruction set -> simple interger operations.
    - data movement
    - conversion Instructions
    - Arithmetic Instructions
    - Logical Instructions.
    - Control Instructions

## Notational Conventions
- operands: where data is coming from and where the results will be placed.

### Operand Notations
- <reg> - register Operand
- <reg8> - register and the size.... in this case al, bl (1 byte)
- <reg32> - register and the size ... double word reg..eax, ebx
- <dest> - Destination operand.
- <src> - source operand
- <RXdest> - floating point destination register operand.
- <imm> - immediate value .... maybe in hex, decimal, octal, binary .....
- <mem> - memory location
- <op> or <operand> - operand, register or memory
- <label> - program label

- hexadecimal values will be specified using 0x prepended on the value..eg.. 15 (base 10) could be written as 0x0F.

## Data Movement
- Data must be moved from ram into a cpu register inorder to be operated upon.
- mov operation performs basic data movement.
- syntax:
    ```
        mov <dest>, <src>
    ```
- Value of the source operand is unchanged.
- Destination and the source operand must both be of the same size. (both bytes, both words ....)
- Destination operand cannot be immediate.
- Both operands cannot be memory.
- When moving from one variable to another, we first store in a register then move what is in the register into the other varibale.
- It is good if we specify the sizes...e.g
    ```
        mv ax, 42   ; ax =42
        mv byte [new_variable_name], ax ; 
    ```

## Addresses and Values
- To access the memory we use []
- Omitting the brackets will not access the memory but will return or obtain the address of the item.

    ```
        mov rax, qword [var1] ; value in var1 moved to rax.
        mov rax, var1 ; address of var1 in rax.
    ```

- The adress of a variable can also be accessed with the load effective address or lea instruction.
    ```
       lea <reg64>, <mem> ; places the address of <mem> into <reg64> 
    ```

## Conversion Instructions. 
- converting one size to another. e.g byte -> double word etc..
- Process depends on size and type of operand.

### Narrowing Conversions.
- Converting from a larger to a smaller type.
    ```
        mov rax, 50 ;moving 50 in rax register
        mov byte [bvar1] , al ; lower portion or rax (al) accesssed to get the value.
    ```
- This operation needs attention to detail as compiler does not throw errors

### Widening Conversions
- From smaller type to larger type.
- Since the size is being expanded, the upper-order bits must be
set based on the sign of the original value.

#### Unsigned widerning Conversions.
- Upper part of the memory or the register must be set to 0.
- Unsigned values can only be positive, so upper-order bits must be set to 0.
    ```
        mov al, 50 ; move 50 to al register (8 bytes)
        mov rbx, 0 ; set 0 to rbx register 
        mov bl, al;

        ; Since the rbx register was set to 0 and then the lower 8-bits were set to the value from al 50 in this example), the entire 64-bit rbx register is now 50.
    ```
- Unsigned widening convertion can also be done with:
    ```
        movzx <dest>, <src>
    ```
- This operation fills the upper order bits with 0.
- Does not allow quadword <dest> operand with a double word <src> operand.

#### Signed widening Conversions
- For signed widening conversions, the upper-order bits must be set to either 0's or 1's depending on if the original value was positive or negative.
- If upper-order bit is 0 - value is positive.
- if upper-order bit is 1 - value is negative.
- The upper-order bit of the original value is extended into the higher bits of the new, widened value.
- Some special move instructions also used:
    ```
        movsx <dest>, <src>
        movsxd <dest>, <src> ; allows for quadword <dest> operand with doubleword <src> operand.
    ```
- NB: There is a conversion table in the book ...


## Integer Arithmetic Instructions.
### addition
```
    add <dest>, <src> ; performs <dest> = <dest> + <src>;
```
- the <dest> and <src> operand must be of the same size.
- <dest> cannot be an immediate value.
- Both <dest> and <src> cannot be memory.
- some example:
    ```
        bVar1 db 42 ; byte sized variable.
        bVar2 db 73 ; byte sized variable
        bAns db 0

        ;to perform addition and store it in variable bAns
        mov al, byte [bVar1]
        add al, byte [bVar2]
        mov byte [bAns], al ;move value in al to the variable bAns
    ```
- The Increment operation will add one to the value in a variable or register.
    ```
        inc <operand> ; operand can be variable, register...

        bNum db 42 
        inc byte [bNum] ;increments the value of bNum by 1

    ```
#### addition with carry
- adds a carry from a previous addition operation.
- Useful when adding large numbers, specifically numbers larger than the regsiter size of the machine.
- general form:
    ```
        adc <dest>, <src> ; operation perfomed is the following
        ; <dest> = <dest> + <src> + <carryBit>
    ```

## Subtraction
- General form:
    ```
        sub <dest>, <src>
    ```
- rules apply just as those of add.
- Decrement operator:
    ```
        dec <operand>
    ```

### Integer Multiplication
- <mul> and <imul> are used.

#### Unsigned Multiplication
```
    mul <src> ; src must be a register or a memory location.

    ; wAns1 = bNumA * bNumB
    mov al, byte [bNumA]
    mul byte [bNumB]         ; result stored in ax
    mov word [wAns1], ax

    ; read more about the other data types, where the results is stored.
    ; check formats x : y
```

#### Signed multiplication





## Logical Instructions
- Truth  table is important here.
- syntax is as follows:
    ```
        and <dest>, <src> ; result placed in dest.
        ; both operands cannot be memory.
        ; <dest> cannot be an immediate.
        ; referred using & in C
    ```

    ```
        or <dest>, <src>
        ; result placed in <dest>
        ; <dest> cannot be immediate value.
        ; referred to using || in C
    ```

    ```
        xor <dest>, <src>
        ; 1 xor 1 => 0
        ; 0 xor 0 => 0
        ; ^ used in C language.
    ```

    ```
        not <op>
        ; logical not operation
        ; C language uses !
    ```

### Shift operations
- Shifts bits within an operand.(left or right)
- All bits are shifted one position.
- The bit that is shifted outside the operand is lost and a 0-bit added at the other side.

#### Logical Shift
- 
