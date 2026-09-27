# VLSI Design and Simulation Using VHDL

This repository contains the VHDL implementations and simulations of basic digital circuits developed using **Xilinx ISE 14.7**.

## Project Overview

The project demonstrates the design, structural implementation, and functional simulation of digital circuits using VHDL. The circuits are built hierarchically, starting from a basic **NAND gate** and progressing to a **1-bit Full Adder** and an **8-bit Full Adder**.

## Implemented Designs

* **NAND Gate** — Basic universal logic gate implemented using VHDL.
* **1-bit Full Adder** — Designed using multiple NAND gate instances.
* **8-bit Full Adder** — Constructed using eight instances of the 1-bit Full Adder in a ripple-carry configuration.
* **Testbenches** — Developed to verify the functionality of each design through simulation.

## Tools and Technologies

* VHDL
* Xilinx ISE 14.7
* ISim Simulator

## Project Structure

```text
VLSI_XILINX/
│
├── NAND_gate/
│   ├── NAND_gate.vhd
│   └── NAND_gate_tb.vhd
│
├── Full_Adder_1bit/
│   ├── NAND_gate.vhd
│   ├── NAND_gate_tb.vhd
│   ├── Full_Adder_1bit.vhd
│   └── Full_Adder_1bit_tb.vhd
│
└── Full_Adder_8bit/
    ├── Full_Adder_8bit.vhd
    └── Full_Adder_8bit_tb.vhd
```

## Simulation

All designs were functionally simulated using the **Xilinx ISE Simulator (ISim)**. The testbenches apply different input combinations and verify the corresponding outputs.

The Full Adders were verified against their expected binary addition results, including carry generation and propagation.

## Purpose

The main purpose of this project is to gain practical experience in **VHDL-based digital circuit design, structural modeling, component instantiation, hierarchical design, and simulation using Xilinx ISE**.
