//The following code to the space is to judge whether it is negative, if it is negative, jump to NEGATIVE
//D = RAM[R0]
@R0
D=M
//If D < 0, jump to NEGATIVE
@NEGATIVE
D;JLT

//The following code is the value of R1, R2 and R3 when it is positive
//RAM[R2] = 0
@R2
M=0
//D = RAM[R0]
@R0
D=M
//RAM[R1] = D = RAM[R0]
@R1
M=D
//RAM[R3] = 0
@R3
M=0

//jump to END
@END
D;JMP

//The following code is the value of R1 and R2 when it is negative
(NEGATIVE)
//RAM[R2] = 1
@R2
M=1
//D= the negative value of RAM[R0]
@R0
D=!M //D = -RAM[R0]
D=D+1 
//RAM[R1] = D = the negative value of RAM[R0]
@R1
M=D

//The following code of the space is to check whether x = -32768 and the value of R3
//When x = -32768, This value is still -32768 after calculate. Not 32768
//D= NOT RAM[R0]
@R0
D=M
D=!D
D=D+1

//if D < 0, jump to CHECK
@CHECK
D;JLT
//RAM[R3] = 0
@R3
M=0
//jump to END
@END
D;JMP

(CHECK)
//RAM[R3] = 1
@R3
M=1

(END)
//This is a loop statement at the end. It is jump to END
@END
D;JMP