Michael Oles		
mbo10@pitt.edu

I tried to implement every instruction and I believe they all work there may be bugs in them, the branch and jump are the ones that have been the most 
confusing to implement but they work as far as I know.  



CONTROL SIGNALS LIST:
All control signals are contained in the decoder circut and some have multiple uses.

JUMP: Is used to signal a jump function.  It chooses to put into the mux that controls the PC.  The first mux chooses between using imm or the $rs 
(I assumed it was supposed to be the first 8 wires) and the second chooses between the first mux and PC+1
I also set the ALU for jump commands so that if the ALU values are both one it will chose the $rs value which is part of the jr command.

SHIFT: Set to 1 during all shifts.  This chooses to use the shift as the write data in the register file.  The ALU values determine if it is a 
sign-extended or zero shift and if it uses SHAMT or $rs to find the shift amount.  This is done inside the shifter circut.

HALT: is only set to one on the halt command which lights the LED and is negated to stop the program counter.

BRANCH: Is set to one on a brach.  The PC will be set to imm if it is and branch and the branch circut outputs one.  This uses comparators to 
compare the $rs to 0 and uses the ALU values to choose which type of comparison to make

PUT:  only set to 1 during a put command.  This enables a register which contains the value to be passed to the LED displays.

MEMTOREG: Is set to 1 except for when a value is read from memory.  Then it is set to 0 and allows that value to be used in place of the ALU's outputs

REGWRITE:  Allows the data in the register to be written to RS.  This is used on every instruction that writes a value to a register.

ALUSRC: Chooses between the ALU output or imm.  Chooses imm in addi/ui and jump instructions and chooses ALU output in arithmetic instructions

ALUOP: Two digits.  Used for multiple purposes as I said above and also used to choose between and/or/add/sub in the ALU

MEMWRITE: Allows SW to connect to memory

MEMREAD: Allows LW to connect to memory.



No bugs that I have found.