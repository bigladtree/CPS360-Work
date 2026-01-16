#Printing a Character

.data
# character: .byte 'A'


.text
li $v0,11 #to print a character
#la, $a0, character (alternate way to load if you have declared the character under the data section)
li $a0, 'A'
syscall

li $v0,10 #exit from the program
syscall