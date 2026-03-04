#add vs addu
#March 2nd
#Overflow: add will give exception
#addu will ignore the overflow (wraps up the number)

.text
li $t1, 0x7FFFFFFF #2 power 31 is 2147483647
li $t2, 1

#add results in an error
# add $t3, $t1, $t2

#addu ignores the overflow
addu $t3, $t1, $t2

li $v0, 1
move $a0, $t3
syscall
