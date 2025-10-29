# Sudoku Solver: Backtracking Algorithm on Cyclone V FPGA

## Project Overview

This repository features the hardware implementation of a complete Sudoku game and real-time solver, designed entirely in **Verilog** and targeting the **Intel Cyclone V FPGA** on the Terasic **DE1-SoC** development kit. The entire system operates exclusively on the FPGA fabric, utilizing a **bare-metal approach** without the ARM HPS.

This demonstrates advanced proficiency in **Hardware Description Language (HDL)**, **Finite State Machine (FSM) decomposition**, and the implementation of complex **backtracking algorithms** in synchronous digital logic.

---

## My Core Contributions (Solver and System Integration)

*This was a group project, as part of the FPGA Design for System-on-Chip module at the University of Leeds. My primary focus involved the computational engine (Solver) and managing the final integration.*

| Feature Developed | Technical Skills Demonstrated | Relevant Files |
| :--- | :--- | :--- |
| **Backtracking Solver Algorithm** | **Verilog HDL**, **Algorithmic Logic Design**, Concurrent State Management, Pipelined Operation (co-developed with Aravindh Anil). | `Solver_Logic.v` |
| **ModelSim Verification** | **Testbench Development**, Waveform Analysis, Coverage of Solver Convergence, FSM State Transitions (co-done with Aravindh Anil). | `*_tb.v` files |
| **Top-Level Integration & FSM** | **Modular Design**, **FSM Hierarchy**, Coordinating Submodules (Solver, UI, Input, Servo Control) within `Integrated_Code.v`. | `Integrated_Code.v` |
| **Hardware Validation** | Final deployment, pin assignment verification, and **Hardware Debugging** on the Cyclone V fabric. | Quartus configuration |

---

## Key Technologies & Implementation Stack

| Category | Details |
| :--- | :--- |
| **Target Hardware** | **Terasic DE1-SoC** (Intel Cyclone V FPGA) |
| **Language** | **Verilog HDL** (entirely), **Bare-Metal FPGA Logic**. |
| **Development Tools** | Intel Quartus Prime (Synthesis/Placement), **ModelSim** (Verification/Simulation). |
| **Peripherals** | **LT24 LCD** (Game UI/Rendering), **SG90 Servo Motor** (Physical Difficulty Indicator). |
| **Algorithms** | **Backtracking Sudoku Solver** (implemented in hardware FSMs). |

---

## Architectural & Feature Highlights

### 1. The Real-Time Solver
* **Background Operation:** The Sudoku solver module runs upon puzzle load, completing the solution using a **backtracking state machine** before the user begins interaction.
* **Real-Time Feedback:** User entries are instantly compared against the pre-calculated solution (rendered **Green** if correct, **Red** if incorrect), demonstrating efficient data comparison logic on the FPGA.
* **Performance:** The solver is optimized to converge on the hardest puzzle within a few seconds, validating the efficiency of the HDL-based algorithm.

### 2. Physical & UI Integration
* **User Interface:** Interactive 9x9 grid rendering, cursor control, and digit display implemented through dedicated **Verilog LCD rendering modules**.
* **Difficulty Indication:** A small servo motor is controlled via a **Verilog PWM module** to act as a physical difficulty dial pointer (Easy → Medium → Hard).
* **Automatic Progression:** The system automatically loads the next difficulty level and updates the servo position upon the successful completion of a puzzle.

---

## Group Roles and Responsibilities

*The design was broken down into specialized modules coordinated by a top-level FSM:*

* **Neeraj Nambudiri:** Backtracking algorithm design, ModelSim testing, and final top-level integration and validation (`Integrated_Code.v`).
* **Aravindh Anil:** Backtracking algorithm design, ModelSim testing, and project documentation.
* **Vishnu Nair:** Development of the LCD rendering modules, grid drawing logic, and digit display with required color highlighting.
* **Harsh Sharma:** Implementation of input handling, debouncing, and mapping of DE1-SoC keys and buttons for UI navigation and numeric entry.
* **Suhaildas:** Development of the Servo Control PWM logic and peripheral interfacing.

---

## Repository Structure

* `Integrated_Code/Integrated_Code.v`: **Top-level module** containing the primary FSM that coordinates all submodules.
* `Integrated_Code/Solver_Logic.v`: Verilog implementation of the **backtracking algorithm**.
* `Integrated_Code/UI_Control.v`, `Rendering.v`: Modules for display and menu FSMs.
* `Integrated_Code/Input_Handler.v`: Module for key/button debouncing and input mapping.
* `Integrated_Code/*_tb.v`: Comprehensive **ModelSim testbenches** for verification.

## Simulation and Verification

* The design was extensively verified in **ModelSim**. Testbenches are provided to demonstrate:
    * Solver convergence and the internal state transitions.
    * UI state flow (Title $\to$ Menu $\to$ Game).
    * Correct logic for real-time digit color updates (White $\to$ Green $\to$ Red).

## Synthesis and Deployment

1.  **Project Setup:** Create a new Quartus project targeting the **Cyclone V** device on the DE1-SoC.
2.  **Files:** Add all Verilog sources from the `Integrated_Code/` folder.
3.  **Pin Assignments:** Configure the necessary pin assignments (`.qsf` file) for the LT24, servo PWM, and input keys according to your hardware setup.
4.  **Verification:** Synthesize, place-and-route, and program the FPGA for on-board validation.

---

## Contact

* **Author:** Neeraj Nambudiri (`nkn162`)
* I am happy to provide a guided technical walk-through of the solver FSM design or the system integration architecture upon request.

---
