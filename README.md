# MASM 8086 Assembly Programs Collection

This repo consists of a collection of 16 Microsoft Macro Assembler (MASM) programs for 8086, 8051 as well as other hardware interfaces. The programs are part of my course titled "Microprocessors, Microcontrollers and Interfacing"

## Program List

Arithmetic Operations

- 8-bit Arithmetic (8bit_arithmetic.asm) - Basic 8-bit addition/subtraction
- 16-bit Arithmetic (16bit_arithmetic.asm) - 16-bit addition/subtraction
- BCD Math (bcd_math.asm) - BCD addition/subtraction with DAA/DAS
- Floating Point (float_ops.asm) - IEEE 754 floating-point operations
- 8051-style Math (8051_arithmetic.asm) - 8-bit multiplication (8051 inspired)

Data Processing

- Matrix Operations (matrix_ops.asm) - Matrix addition/subtraction
- Sorting (sorting.asm) - Bubble sort implementation
- Cube Calculation (cube_number.asm) - Computes cube of 8-bit number
- BCD-Hex Conversion (bcd_hex.asm) - Converts between BCD and hexadecimal

I/O
- String Operations (string_ops.asm) - String length calculation
- Case Conversion (case_conversion.asm) - Uppercase/lowercase conversion
- System Time (system_time.asm) - Reads and displays system date

Hardware
- Keyboard/Display (keyboard_display.asm) - 8279 interface simulation
- PPI Interface (ppi_interface.asm) - 8255 programmable peripheral interface
- Stepper Motor (stepper_motor.asm) - Stepper motor control
- Waveform Gen (waveform_gen.asm) - DAC interface for waveform generation

## Requirements
- MASM (Microsoft Macro Assembler)
- DOSBox or similar x86 emulator (for testing)

## Setup Instructions

1) Install MASM and DOSBox

2) Clone this repository:

```
git clone https://github.com/yourusername/masm-programs.git
```

3) Navigate to project directory in DOSBox:

```
mount c: /path/to/repository
c:
```

## Running the programs

To assemble and run any program:

```
masm program.asm;
link program.obj;
program.exe
debug program.exe
```

## Resources
- MASM Programmer's Guide
- 8086 Instruction Set
- DOSBox Configuration Guide

## Contributing
Contributions are more than welcome. Just fork the repo, create a new branch and submit a pull request
