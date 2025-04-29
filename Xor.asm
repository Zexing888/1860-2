//The following code to the space is used for calculate RAM[R0] OR RAM[R1]
//D = RAM[R0]
@R0 
D=M
//D = RAM[R0] OR RAM[R1]
@R1
D=D|M
//RAM[R2] = D = RAM[R0] OR RAM[R1]
@R2
M=D

//The following code to the space is used for calculate NOT(RAM[R0] AND RAM[R1])
//D = RAM[R0]
@R0
D=M
//D = RAM[R0] AND RAM[R1]
@R1
D=D&M
//RAM[R3] = NOT D = NOT(RAM[R0] AND RAM[R1])
@R3
M=!D

//The following code to the space is used for calculate NOT(RAM[R0] AND RAM[R1]) AND (RAM[R0] OR RAM[R1])
//D = RAM[R3]
@R3
D=M
//RAM[R2] = D and M = NOT(RAM[R0] AND RAM[R1]) AND (RAM[R0] OR RAM[R1])
@R2
M=D&M

(END)
//This is a loop statement at the end. It is jump to END
@END
0;JMP