#Signed Unsigned program
#Feb 11 Class
# slt - set less than
# sltu - set less than unsigned 

.data
newline: .asciiz "\n"

.text 
li $t1, -1
li $t2, 1
slt $t3, $t1, $t2 # if $t1 < $t2, $t3 = 1. This is the case here, so $t3 is now 1. 

sltu $t4, $t1, $t2 #if $t1 < $t2, $t3 = 1. Since this is unsigned, $t1 = $t2, so $t4 = 0. 

#printing $t3
li $v0, 1
move $a0, $t3
syscall

#adding space between $t3 and $t4
li $v0, 4
la $a0, newline
syscall

#printing $t4
li $v0, 1
move $a0, $t4
syscall