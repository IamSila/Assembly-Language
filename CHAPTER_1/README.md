Learning assembly code for low level devices and binary exploitation

- x86-64 bit assembly language
- assembly provides basic instructional interface to the computer processor.
- The process of actually learning assembly language involves writing non-trivial programs to perform specific low-level actions including arithmetic operations, function calls, using stack-dynamic local variables, and operating system interaction for activities such as input/output.


## Basic x86-64 overview
- The architecture is commonly called von Neumann Architechture
- Programs and data stored in secondary storage

## Data storage sizes
storage |   size(bits)    |  size (bytes)
- byte  ->   8 bits     -> 1 byte
- word  ->   16 bits    -> 2 bytes
- doube word -> 32 bits -> 4 bits
- Quadword   -> 64 bits -> 8 bytes
- Double quadword  -> 128 bits -> 16 bytes

## cpu registers
- temporary storage or working location built into the
CPU itself (separate from memory)

### 64 bit registers
- rax, rbx, rcx, rdx, rsi, rdi, rbp, rsp, r8, r9, r10....r15.

## stack pointer register (rsp)
- Points to the current top of the stack
- should not be used for data or other uses

## base pointer registers (rbp)
- Used as a base pointer register during function calls
- should not be used for data or other uses

## instruction pointer register (rip)
- Used by the CPU to point to the next instruction to be executed.

## Flag registers (rFlags)
- Used for status and CPU control information
- Updated by the cpu after each instruction and is not directly accessible by programs.
- Stores status information about the instruction that was just executed
- Check the types of rFlags ... they are important in analysing binary code.

## cache memory
- If memory location is accessed, a copy of the value is placed in the cache.

## Main memory
- Is a series of bytes, one after another.
- Memory is byte addressable.
- Uses little-endian architecture.
- The least significant byte is stored in the lowest memory location and most significant byte is stored on the highest end of the memory location.

## check the memory layout.


-> stack   (grows downwards)
    .
    .
    .
    .
-> heap  (grows upwards) - dynamically allocated data 
-> Uninitialised data
-> data - where the initialised data is stored.
-> text (code) - where machine language is stored
-> reserved data  (not available to user programmes)

## memory hierachy
- This is the hierachy of the memory
-> cpu registers. - fastest, smallest, most expensive.
-> cache.
-> Primary storage (main memory / ram)
-> secondary storage (hard disks, ssd, flsh)
-> tertiary storage (remote storage, optical, backups, etc)


