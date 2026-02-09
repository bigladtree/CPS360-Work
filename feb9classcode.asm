# Ch2 concepts based programming
# Similar to function call in Java, C
# Procedure Call
# Coded during Feb 9th Class


.data 
result: .asciiz "The result is "



.text
# argument registers
li $a0, 5
li $a1, 11
jal add_function # similar to function call in Java
#jal will make the ctrl to jump to add_function 
# and then the return address is stored in $ra

# print the result
move $a0, $v0 #moving the result in $v0 to $a0
li $v0, 1 # print a number
syscall

j exit

add_function: # similar to Java/C function definition
add $v0, $a0, $a1
jr $ra # similar to return statement

exit:
li $v0, 10
syscall
