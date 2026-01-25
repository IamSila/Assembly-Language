# Program format
- formatting requirements for assembly language.... they are specific to yasm assembler.
- properly formatted assembly source consists of several main parts:
    - Data section - initialised data is declared and defined
    - BSS section - for uninitialized data.
    - Text section - code is placed.

## comments in assembly
- a semicolon is used (;)

## Numeric values
- Specified in hex, decimal or octal.
- hex: Must be preceded by 0x.
- octal: Must be followed by a q.
- Decimal: No special notation is needed.

## Defining constants.
- Are defined with equ.
- Sample: 
        ```
            <variable> equ <value>
        ```
- a const is not assigned a memory location, a speciic type or size.
- SIZE equ 10000: would be used as a word or a double word but not a byte.

## Data section
- Initialized data must be declared in the "section .data" section.
- All initialized variables and constants are placed in this section.
- variable definitions must include the name, datatype and the initial value.
    ```
        <variableName> <dataType> <initialValue>
    ```
- Supported data types are as follows
    - db -> 8-bit variables
    - dw -> 16-bit variables.
    - dd -> 32-bit variables.
    - dq -> 64-bit variables.
    - ddq -> 128-bit variables. (integer)
    - dt -> 128-bit variables (float)
