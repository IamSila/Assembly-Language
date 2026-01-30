# hollowing out a function

- push ebp : marks the start of a function
- after push ebp there mus be mov ebp, esp which prepares the fnction for use.
- This is called the function prologue.
# 
- <mark>ret</mark> : Marks the end of a function
- Before ret there must be <mark>leave</mark> instruction.
- This is called function epilogue.


