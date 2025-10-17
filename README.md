# 8-Bit Arithmetic Logic Unit (ALU) — Verilog HDL

## 📘 Overview
This project implements an **8-bit Arithmetic Logic Unit (ALU)** using Verilog HDL. The ALU performs fundamental arithmetic and logical operations based on a 3-bit control input (`op`). It demonstrates the integration of combinational logic and control flow in digital hardware design.

## ⚙️ Features
- Supports **eight operations**:
  - `000` — Addition  
  - `001` — Subtraction  
  - `010` — Bitwise AND  
  - `011` — Bitwise OR  
  - `100` — Bitwise XOR  
  - `101` — Bitwise NOT (on A)  
  - `110` — Left shift A  
  - `111` — Right shift A  
- Generates **Carry** and **Zero** flags  
- Implemented using **behavioral modeling** in Verilog  
- Tested with a **SystemVerilog testbench**

## 🧩 Files
- `design.sv` — 8-bit ALU module  
- `testbench.sv` — Testbench used to verify functionality

## 🧠 Simulation Output
Example results:
Time | A B op | Result Carry Zero
10 | 00000110 00000011 000 | 00001001 0 0
20 | 00000110 00000011 001 | 00000011 0 0
30 | 00000110 00000011 010 | 00000010 0 0
40 | 00000110 00000011 011 | 00000111 0 0
50 | 00000110 00000011 100 | 00000101 0 0
60 | 00000110 00000011 101 | 11111001 0 0
70 | 00000110 00000011 110 | 00001100 0 0
80 | 00000110 00000011 111 | 00000011 0 0

## 💻 Tools Used
- **Language:** Verilog / SystemVerilog  
- **Simulator:** Icarus Verilog (via [EDA Playground](https://www.edaplayground.com/))  
- **Environment:** Web-based HDL simulation and testing

## 🌟 Learning Outcome
This project helped me understand:
- Digital logic design  
- Behavioral modeling in Verilog  
- ALU architecture  
- Testbench verification  

## 🔗 Repository Link
(Replace this with your own repo link after uploading, e.g.)  
**https://github.com/yourusername/8-bit-ALU-verilog**
