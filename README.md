# Verilog Learning

This repository contains my early Verilog/SystemVerilog practice files as I learn RTL design, simulation, testbenches, and basic digital logic concepts.

The files are mainly small examples written while learning topics such as combinational logic, sequential logic, operators, loops, tasks, functions, and simple testbench simulation.

## Topics Covered

- Basic Verilog module structure
- `wire` and `reg`
- `assign` statements
- `always` blocks
- Clocked logic
- Testbenches
- Conditional statements
- `case` statements
- Bitwise, logical, relational, shift, and reduction operators
- Concatenation and replication
- `for`, `while`, `repeat`, and `forever` loops
- Tasks and functions
- Simple LED blinking examples
- Simulation waveform generation

## File Types

| Extension | Meaning |
|---|---|
| `.v` | Verilog source files |
| `.sv` | SystemVerilog source files |
| `.vvp` | Compiled simulation output from Icarus Verilog |
| `.vcd` | Waveform files for viewing in GTKWave |

## Running a Simulation

Example using Icarus Verilog:

```bash
iverilog -o output.vvp file.v testbench.v
vvp output.vvp
