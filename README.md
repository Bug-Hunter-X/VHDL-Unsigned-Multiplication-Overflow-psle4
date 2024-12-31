# VHDL Unsigned Multiplication Overflow Bug
This repository demonstrates a common error in VHDL code involving unsigned multiplication and its solution.

## Bug Description
The provided VHDL code implements a simple 4-bit by 4-bit unsigned multiplier.  However, it fails to handle potential overflow situations where the result exceeds 8 bits.  This can lead to incorrect results or unpredictable behavior.

## Solution
The solution addresses the overflow issue by properly handling the result of the multiplication. This involves checking if the result exceeds the maximum value representable by the 8-bit output and applying saturation or other appropriate handling techniques.