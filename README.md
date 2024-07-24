# Booth Multiplier in Verilog

This repository contains a Verilog implementation of Booth's multiplication algorithm for 8-bit signed integers. Booth's algorithm is a powerful technique for efficient multiplication of binary numbers, especially when dealing with both positive and negative values. This project aims to provide a clear and educational implementation of Booth's algorithm using Verilog.

## Overview

Booth's algorithm is used to multiply two signed binary numbers. It reduces the number of operations required by handling positive and negative numbers in a unified way. The algorithm works by iterating through the bits of the multiplier and performing conditional addition/subtraction based on the value of the multiplier bits.

### Modules

- **`xor2`**: Implements a 2-input XOR gate.
- **`fa`**: A full adder module that computes the sum and carry for three input bits.
- **`eight_bit_adder_subtractor`**: Performs 8-bit addition and subtraction operations, including the calculation of two's complement if necessary.
- **`booth_substep`**: Executes one step of Booth's algorithm, including conditional addition/subtraction and right shifting of the accumulator and multiplier.
- **`booth_multiplier`**: The main module that orchestrates the Booth multiplication algorithm over multiple steps to produce a 16-bit product.

## How It Works

1. **`xor2` Module**: 
   - Performs a bitwise XOR operation on two inputs.

2. **`fa` Module**:
   - Implements a full adder that handles the addition of three bits, providing a sum and carry-out.

3. **`eight_bit_adder_subtractor` Module**:
   - Adds or subtracts two 8-bit numbers based on the carry-in signal. Handles two's complement arithmetic when needed.

4. **`booth_substep` Module**:
   - Performs a single step of Booth's algorithm. It decides whether to add, subtract, or just perform a right shift based on the current bit of the multiplier and the previous `q-1` bit.

5. **`booth_multiplier` Module**:
   - Orchestrates the Booth multiplication process by coordinating multiple substeps. It iterates through all bits of the multiplier to compute the final product.

## How to Use

1. **Compile the Code**:
   - Use your preferred Verilog synthesis tool to compile the Verilog files. Example tools include ModelSim, Vivado, or Synopsys Design Compiler.

2. **Run Simulations**:
   - Simulate the modules to verify their functionality. Test various cases to ensure the Booth multiplier performs correctly with both positive and negative integers.

3. **Integrate and Test**:
   - Integrate the `booth_multiplier` module into a larger system if needed. Test the multiplication results by providing different 8-bit signed integers as inputs and check the 16-bit output product.
![image](https://github.com/user-attachments/assets/ed0d9450-6778-447f-82bb-6f8980d39b54)


