**Software Floating Point Unit (FPU) on Toy Machine | Arithmetic Operators**

This repository demonstrates a software-based implementation of a Floating-Point Unit (FPU) for the **Toy-16** educational architecture. It handles 16-bit floating-point arithmetic using standard assembly code, providing a practical way to understand low-level numerical computation.

##  Project Overview

The implementation focuses on how a simple 16-bit processor can perform floating-point operations without dedicated hardware. The following diagram illustrates the architecture and data flow of the software FPU:

![FPU Architecture](https://github.com/MuhammadBilalCS/Software_FPU/blob/main/Presentation/FPU.png?raw=true)

## ➖ Subtraction Operation Example

The screenshot below shows the standard output of a subtraction operation, demonstrating the correct handling of floating-point numbers:

![Subtraction Output](https://github.com/MuhammadBilalCS/Software_FPU/blob/main/Presentation/SUBTRACT_STD_OUT.png?raw=true)

##  Handling Floating-Point Numbers in Toy-16 Assembly

The Toy-16 architecture is a simple 16-bit machine. To perform floating-point operations, we must represent, manipulate, and compute with numbers in software. This project implements a 16-bit floating-point format and uses standard assembly instructions to achieve this.

### 1. 16-bit Floating-Point Representation

The project defines a custom 16-bit floating-point format, likely based on a mini-float standard. A typical format might allocate bits as follows:

-   **Sign Bit (1 bit):** Determines if the number is positive or negative.
-   **Exponent Bits (5 bits):** Stored with a bias (e.g., 15) to allow for both positive and negative exponents.
-   **Mantissa/Significand Bits (10 bits):** Represents the precision of the number, with an implicit leading 1.

This format allows a reasonable range and precision for educational purposes.

### 2. Key Steps in Software FPU Operations

Performing arithmetic (like addition or subtraction) on these 16-bit floats in assembly involves several critical steps:

1.  **Extraction:** The sign, exponent, and mantissa are extracted from the 16-bit word using bitwise `AND` and shift operations.
2.  **Alignment:** For addition or subtraction, the exponents of the two numbers must be equal. The number with the smaller exponent has its mantissa shifted right, and its exponent is increased until both exponents match.
3.  **Mantissa Operation:** The mantissas are then added or subtracted as integers.
4.  **Normalization:** The result is normalized. This may involve shifting the mantissa left or right and adjusting the exponent accordingly to ensure the leading bit is 1.
5.  **Rounding:** The result is rounded to fit within the available mantissa bits.
6.  **Re-packing:** The final sign, exponent, and mantissa are packed back into a single 16-bit word.

