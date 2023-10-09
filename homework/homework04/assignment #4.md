**answers to homework #4**

1. X := A or (B and C) <br>
   Y := Not-A or C

2. Drawing in pdf

3. Assume the intital value is stored in accumulator A0 for all problems and setting it equal to the answer is sufficient to solve the problem <br>
   a. <br>
   &nbsp; AND A0, A0, #0xAAAAAAAA; Clear even bits by ANDing with the all even bits as 0s and all odd bits as 1s (I assumed #0xAAAAAAAA but if the rightmost bit is bit 0 instead of bit 1 then use #0x55555555) <br>
   b. <br>
   &nbsp; OR A0, A0, #0x00000007; Set the last three bits by ORing with just the last 3 bits active (#0x00000007) <br>
   c. <br>
   &nbsp; MOD A0, A0, #0x00000008; Use Modulo to get remainter <br>
   &nbsp; cool bonus way I found: <br>
   &nbsp; AND A0, A0, #0x00000007; Use bitwise AND with 0x00000007 to keep only the remainder (value < 8) <br>
   d. <br>
   &nbsp; OR A0, A0, #FFFFFFFF; Set all bits to 1 (this is -1 in a signed interpretation) by ORing  <br>
   e. <br>
   &nbsp; XOR A0, A0, #0xC0000000; Complement the two highest order bits by XORing with the hightest order bits set to 1s <br>
   f. <br>
   &nbsp; LOAD temp, #0x00000000; Create a new accumulator to store a value <br>
   &nbsp; MOD temp, A0, #0x00000008; Store the remainder of value/8 in temp <br>
   &nbsp; SUB A0, A0, temp; Subtract the remainder to set our initial value equal to the largest power of 8 less than or equal to it<br>

4. 

5. 

6. 

7. 

8. 

9. Part 1: <br>
   Part 2: