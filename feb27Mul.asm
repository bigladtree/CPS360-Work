# mips multiplication using mul
# takes 3 operands
# 32 bit product
# mul is a psuedoinstruction

.data
product: .asciiz "The product of 50 and 12 is: "

.text
li $t1, 50
li $t2, 12

mul $t3, $t1, $t2

#product message
li $v0, 4
la $a0, product
syscall

#product message value
li $v0, 1
move $a0, $t3
syscall
