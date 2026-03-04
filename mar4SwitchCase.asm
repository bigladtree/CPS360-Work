# Switch case
# get a number
# option from the user 1. sll 2. srl
# based on the option chosen, the corresponding result is printed

.data
n: .asciiz "Enter the number: "
option: .asciiz "Enter 1. for sll, 2. for srl: "
defaultMsg: .asciiz "ERRORL: Invalid option selected. Restart the program." 

.text
.globl main
main:
#printing the prompt about the number
li $v0, 4
la $a0, n
syscall

# Get the user input for the number
li $v0, 5
syscall
move $t1, $v0

#print the prompt about the choices
li $v0, 4
la $a0, option
syscall

#Getting user input on the choice
li $v0, 5
syscall
move $t2, $v0

#switch case
li $t3, 1 #temporary register
#choice 1
beq $t2, $t3, sll #if t2 == t3, sll
#choice 2
li $t3, 2
beq $t2, $t3, srl #if t2 == t3, srl

j invalidOption # default

invalidOption: 
#print invalid option message
li $v0, 4
la $a0, defaultMsg
syscall

sll:
sll $t1, $t1, 1

#Printing Result
li $v0, 1
move $a0, $t1
syscall

j done

srl:
srl $t1, $t1, 1
#Printing Result
li $v0, 1
move $a0, $t1
syscall

j done

done: 
li $v0, 10
syscall
