# Get 2 user input numbers
# add the two numbers
# display the sum

.data
number1: .asciiz "Enter the first number: "
number2: .asciiz "Enter the second number: "
Sum: .asciiz "The sum is: "

.text
#printing "Enter the first number: "
li $v0,4
la $a0,number1
syscall

#Getting user input for number 1
li $v0,5
syscall
move $t1,$v0 # loads input onto $t1

#printing "Enter the second number: "
li $v0,4
la $a0,number2
syscall

#Getting user input for number 2
li $v0,5
syscall
move $t2,$v0 # loads input onto $t2

add $t3, $t1, $t2

#printing "The sum is: "
li $v0, 4
la $a0, Sum
syscall

#printing the final sum
li $v0,1
move $a0, $t3
syscall

