# THE TOOL CHAIN
- The set of programming tools used to create a program is referred to as a toolchain.
- we look at : assembler, linker, loader, debugger.

## Assemble -> link -> load overview
- How source code is converted into executable program.
- assembler converts the code into an object.
- object is converted into an executable by a linker.
- The loader will load the executable into the memory.

## Assembler
- Converts the code into machine language / binary file.
- Machine language output is called an object file.
- comments are removed and vaiables and labels converted into appropriate addresses.
- Assembler used in this series is the yasm assembler.

### Assemble commands
- appropriate command for reading the assembly language source such as the one from the previous file, could be such as follows:
    ```
        yasm -g dwarf2 -f elf64 first_program.asm -l first_program.lst
    ```
- -> -g dwarf2:  informs the assembler to include debugging information in the final object file. Increases the size, but is necessary to allow for effective debugging.
- -> -f elf64: informs the assebler to create the object file in elf64 format which is appropriate for 64-bit, linux based systems.
- -> first_program.asm: name of the assembly language source file for input.
- -> -l first_program.lst: creates a list file names as shown.

### list file
- This file shows the line numbers, relative address, the machine language version and the original source file.
- Can be useful when debugging.
- There is a very good example on page 58... explaining the list file format.

### Two-pass Assembler
- Assemble converts the machine code into 0s and 1 (machine language).
- Machine language can be converted back to assembly language(human readable code).
-
