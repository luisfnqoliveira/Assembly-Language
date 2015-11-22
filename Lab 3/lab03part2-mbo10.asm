.data
msg1: .asciiz "Please enter your integer: "
msg2: .asciiz "Here is the input in binary: "
msg3: .asciiz "Here is the input in hexadecimal: "
msg4: .asciiz "Here is the output in binary: "
msg5: .asciiz "Here is the outputin hexadecimal: "
etr:  .asciiz "\n"

.text
li	$v0, 4
la 	$a0, msg1		#prompt user for value
syscall
li	$v0, 5			#read value
syscall
move 	$t0, $v0		#store first value in t0

li	$v0, 4			#print input in binary
la	$a0, msg2
syscall
li	$v0, 35
move	$a0, $t0
syscall
li	$v0, 4			
la	$a0, etr
syscall

li	$v0, 4			#print input in hexidecimal
la	$a0, msg3
syscall
li	$v0, 34
move	$a0, $t0
syscall
li	$v0, 4			
la	$a0, etr
syscall

addi	$t1, $zero, 240
and	$t2, $t1, $t0
srl	$t0, $t2, 4

li	$v0, 4			#print new value in binary
la	$a0, msg4
syscall
li	$v0, 35
move	$a0, $t0
syscall
li	$v0, 4			
la	$a0, etr
syscall

li	$v0, 4			#print new value in hexidecimal
la	$a0, msg5
syscall
li	$v0, 34
move	$a0, $t0
syscall
li	$v0, 4		
la	$a0, etr
syscall

li $v0, 10			#exit
syscall
