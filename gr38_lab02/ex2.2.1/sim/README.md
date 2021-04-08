# Booth's algorithm-based multiplier

## Implementation Notes
Implementing the whole architecture on a single vhd file was a little messy (at least in my implementation) then I opted for a modular implementation consisting in a row-based split of the architecture:

* first row (level): mux + encoder
  - mux inputs: 0, ± A, ± 2A
* other rows: mux + encoder + adder
  - mux inputs: 0, ± 2A, ± 4A (where A is the $2^{2N-1}$ A coming from former level, with N number of level)

Therefore the multiplier only instanciates rows while the other submodules are not accessed as they're embedded in the rows.

 ## Muxes Inputs' Generation
 At architectural level, I defined a ```shift_compl``` submodule generating the appriopriate multiples of A performing two shifts (A -> 2A -> 4A) and two 2's complement (2A -> -2A, 4A -> -4A)

 **NOTICE:** when reading signals,"p" and "m" stand for "plus" (+) and "minus" (-)



