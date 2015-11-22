.data
msg1: .asciiz "What is the first value?\n"
msg2: .asciiz "What is the second value?\n"
msg3: .asciiz "The sum of "
msg4: .asciiz " and "
msg5: .asciiz " is "

.text
li	$v0, 4
la 	$a0, msg1		#prompt user for value 1
syscall
li	$v0, 5			#read value
syscall
move 	$t0, $v0		#store first value in t0

li	$v0, 4
la 	$a0, msg2		#prompt user for value 2
syscall
li	$v0, 5			#read value
syscall
move 	$t1, $v0		#store second value in t1

add	$t2, $t0, $t1		#find the sum

li	$v0, 4
la	$a0, msg3		
syscall		
li	$v0, 1
move	$a0, $t0
syscall
li	$v0, 4
la	$a0, msg4		
syscall		
li	$v0, 1
move	$a0, $t1
syscall
li	$v0, 4
la	$a0, msg5		
syscall		
li	$v0, 1
move	$a0, $t2
syscall

li $v0, 10			#exit
syscall
