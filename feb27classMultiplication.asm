#Multiplication
#Coded during 2/27/26 class
# mult mips instruction
# 64 bit product

.data
multiplicandMsg: .asciiz  "Enter the first number: "
multiplierMsg: .asciiz "Enter the second number: "
lowResultMsg: .asciiz "The lower 32 bits of the product is: "
highResultMsg: .asciiz "The upper 32 bits of the product is: "
newline : .asciiz "\n"

.text
#Printing message for first number (multiplicand)
li $v0, 4
la $a0, multiplicandMsg
syscall

#Reading the first number
li $v0, 5
syscall
move $t1, $v0

#Printing message for second number (multiplier)
li $v0, 4
la $a0, multiplierMsg
syscall

#Reading the second number
li $v0, 5
syscall
move $t2, $v0

#Multiplying the numbers
mult $t1, $t2 #only takes 2 operands, 64 bit product
mflo $t3 #lower 32 bits of the product are moved to $t3 from the lo register
mfhi $t4 #upper 32 bits of the producrt are moved to $t4 from the hi register 

#lower bit message
li $v0, 4
la $a0, lowResultMsg
syscall

#lower 32 bits value
li $v0, 1
move $a0, $t3 #converted to add $a0, $0, $t3
syscall

#newline
li $v0, 4
la $a0, newline
syscall

#upper bit message
li $v0, 4
la $a0, highResultMsg
syscall

#higher 32 bits value
li $v0, 1
move $a0, $t4 #converted to add $a0, $0, $t4
syscall
