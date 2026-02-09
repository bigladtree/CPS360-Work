# beq
# coded during Feb 9 class
# Use $t1, $t2 assign values to these 2 registers
# beq on $t1, $t2 go to label if $t1 == $t2
# Within label: assign 200 to $t3
# if t1 != t2 then do not branch to label and the next instruction after beq is executed. assign $t3 = 100
# Printing $t3 is irrespective of whether the label was taken or not. 

.data
message: .asciiz "The Value of $t3 is: "
.text
li $t1, 10
li $t2, 10
beq $t1, $t2, label
#if $t1 != $t2
li $t3, 100
j done

label: #if $t1 == %$t2
li $t3, 200

done:
#print the $t3 message
li $v0, 4
la $a0, message
syscall

#printing $t3 value
li $v0, 1
move $a0, $t3
syscall
