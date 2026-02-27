#Feb 27th Class Division Program
#div mips instruction
#two operands
# lo register has the quotient
# hi register has the remainder

.data 
QuotientMessage: .asciiz "The quotient is: "
RemainderMessage: .asciiz "The remainder is: "
newline: .asciiz "\n"
.text 
li $t1, 38 #Dividend
li $t2, 2 #Divisor

div $t1, $t2

mflo $t3 #lo register has the quotient and that is moved to $t3

mfhi $t4 #hi register has the remainder and that is moved to $t4

#Quotient Message
li $v0, 4
la $a0, QuotientMessage
syscall

#Quotient Value
li $v0, 1
move $a0, $t3 
syscall

#Newline
li $v0, 4
la $a0, newline
syscall

#Remainder Message
li $v0, 4
la $a0, RemainderMessage
syscall

#Remainder Value
li $v0, 1
move $a0, $t4
syscall
