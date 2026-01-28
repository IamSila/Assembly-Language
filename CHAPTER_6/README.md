# CHAPTER 6: DDD Debugger
- A debugger allows the user to control execution of a program, examine the variables, other memory and displaying the program output. -- if any.
- DDD - data display debugger. - gui for gdb.
- DDD functionality can be extended using plugins.


## starting the DDD debugger.
```
    ddd example
```

## Program execution with ddd
- Run button to execute the program.
- You can type run on the gdb commandline.

### Setting breaking points.
- Right click on a line and select Set breakpoint.
- In gdb, you can type break last.
- or you can type break <line number>
- Multiple break points can be set if desired.


### Executing Programs
- Once the debugger is started, in order to effectively use the debugger, an initial breakpoint must be set.
- Break point is indicated with the stop sign.

### Run / Continue.
- After the initial Run command, to continue to the next breakpoint, the continue command must be used (by clicking Cont menu window or typing cont at the (gdb) prompt).


### Next / Step
- Will execute the next instruction. i.e An entire function if necessary.

### Displaying register contents.
- Use the registers window.
- Select Status -> Registers.


### DDD/GDB commands.
- quit/q -> quit the debugger.
- break <label/addr> -> set a break point.
- run <args> -> execute the program.
- continue -> continues the execution.
- step -> step into the next instruction.(functions and procedure calls)
- next - next instruction.
- f3 -> restart the program.


### Displaying contents of the stack
- The stack is normally comprised of 64 bit, unsigned elements.
- Address is stored in the rsp register.
- The command to display the top of the stack would be as follows:
    ```
        x/ug &rsp
    ```
- To display the top 6 items on the stack we would use:
    ```
        x/6ug &rsp
    ```


