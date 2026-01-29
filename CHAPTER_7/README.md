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


