LUT[opcode_i], LUT[opcode_(i-1), LUT[opcode_(i-2)] show all signals related to the instructions decoded 0, 1, 2 clk cycles before and are reported to compare the actual output with the expected one.
In particular:
- the first hex digit of LUT[opcode_i] should match the Decode_signals
- the second hex digit of LUT[opcode_(i-1)] should match Exe_signals << 1 or (Exe_signals << 1) + 1; the last bit of the digit is related MemWB_signals
- the last 5 bits of LUT[opcode_(i-2)] should match the MemWB_signals 
