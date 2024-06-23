# lc3 Virtual Machine

A C implementation of the LC-3 virtual machine, an educational computer architecture.

tutorial followed [here](https://www.jmeiners.com/lc3-vm/)

## Building

Warning: works only on Linux

```bash
> git clone https://github.com/Spad0n/lc3-vm.git
> cd lc3-vm
> make
```

the Makefile will generate two program:
- lc3as (compile assembly code to bytecode)
- lc3vm (run the bytecode on the virtual machine)

## Usage

to compile lc3 assembly code into bytecode:

```bash
> lc3as hello.asm
```

to execute in the lc3 virtual machine:

```bash
> lc3vm hello.obj
```

