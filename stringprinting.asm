#Printing a String

.data
#directive (data types): ascii (not null terminated), asciiz (will be null terminated), word, byte
msg: .asciiz "Hello World"

.text
#Printing the String
li $v0,4 #to print a string
la $a0,msg
syscall

li $v0,10 #exit from the program, optional
syscall