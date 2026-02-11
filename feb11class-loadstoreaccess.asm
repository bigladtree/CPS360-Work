# Coded during Feb 11 Class
# Load store access

.data
A: .word 5, 10 #storing 10 in $a1
result: .asciiz "The Result Is: " 

.text
la $s0, A # loading the base address of A onto $s0 register
#address of A[0] is stored in $s0
lw $t1, 0($s0) #5 to $t1
lw $t2, 4($s0) #10 which is A[1] is moved to $t2

add $t3, $t1, $t2

#Print "The Result"
li $v0, 4 #Printing the result string
la $a0, result
syscall 

#Printing the number
li $v0, 1 
move $a0, $t3
syscall

#optional exit code
li $v0, 10
syscall