.data
Array_A:	.word 0xa1a2a3a4, 0xa5a6a7a8
prompt:		.asciiz "Please enter element type (‘w’-word, ‘h’-half, ‘b’-byte):"
error:		.asciiz "\nincorrect input"
newline: 	.asciiz "\n"
comma:		.asciiz ", "
msg:		.asciiz "Here is the output (address, value in hexadecimal, value in decimal):\n"

.text
	li 	$v0, 4
	la 	$a0, prompt		#prompt user for value
	syscall
	li	$v0, 12			#read value
	syscall
	move 	$t0, $v0		#store first value in t0

	addi	$t1, $zero, 0x77
	addi	$t2, $zero, 0x68
	addi	$t3, $zero, 0x62	
	
	li 	$v0, 4
	la 	$a0, newline		#prompt user for value
	syscall	
	li 	$v0, 4
	la 	$a0, msg		#prompt user for value
	syscall	
				
	
	bne 	$t0, $t1, WORD		#find user input(and how many times to loop)
	addi	$t3, $zero, 2
	addi	$t1, $zero, 1
	la	$t4, Array_A		
LOOPW: 					#t0=size t1=index t2=printing t3=iterations t4 = address 		
	lw	$t2, 0($t4)		#load address	
	
	move	$a0, $t4		#print address
	li	$v0, 34
	syscall	
	li 	$v0, 4
	la 	$a0, comma		
	syscall	
	
	move	$a0, $t2		
	li	$v0, 34			#print in hex
	syscall
	li 	$v0, 4
	la 	$a0, comma		
	syscall
	
	move	$a0, $t2		
	li	$v0, 1			#print in dec
	syscall	
	li 	$v0, 4
	la 	$a0, newline
	syscall	
	
	beq	$t3, $t1, OUTW		#check if done
	addi	$t1, $t1, 1		#add to index
	add 	$t4, $t4, 4		#increment address
	j LOOPW		
OUTW:		
	j EXIT
WORD:		
	bne 	$t0, $t2, HALF		#find user input(and how many times to loop)
	addi	$t3, $zero, 4
	addi	$t1, $zero, 1
	la	$t4, Array_A		
LOOPH: 					#t0=size t1=index t2=printing t3=iterations t4 = address 		
	lhu	$t2, 0($t4)		#load address	
	
	move	$a0, $t4		#print address
	li	$v0, 34
	syscall	
	li 	$v0, 4
	la 	$a0, comma		
	syscall	
	
	move	$a0, $t2		
	li	$v0, 34			#print in hex
	syscall
	li 	$v0, 4
	la 	$a0, comma		
	syscall
	
	move	$a0, $t2		
	li	$v0, 1			#print in dec
	syscall	
	li 	$v0, 4
	la 	$a0, newline
	syscall	
	
	beq	$t3, $t1, OUTH		#check if done
	addi	$t1, $t1, 1		#add to index
	add 	$t4, $t4, 2		#increment address
	j LOOPH		
OUTH:		
	j EXIT
BYTE:	
	bne 	$t0, $t3, BYTE		#find user input(and how many times to loop)
	addi	$t3, $zero, 8
	addi	$t1, $zero, 1
	la	$t4, Array_A		
LOOPB: 					#t0=size t1=index t2=printing t3=iterations t4 = address 		
	lbu	$t2, 0($t4)		#load address	
	
	move	$a0, $t4		#print address
	li	$v0, 34
	syscall	
	li 	$v0, 4
	la 	$a0, comma		
	syscall	
	
	move	$a0, $t2		
	li	$v0, 34			#print in hex
	syscall
	li 	$v0, 4
	la 	$a0, comma		
	syscall
	
	move	$a0, $t2		
	li	$v0, 1			#print in dec
	syscall	
	li 	$v0, 4
	la 	$a0, newline
	syscall	
	
	beq	$t3, $t1, OUTB		#check if done
	addi	$t1, $t1, 1		#add to index
	add 	$t4, $t4, 1		#increment address
	j LOOPB		
OUTB:		
	j EXIT
HALF:	
	li 	$v0, 4
	la 	$a0, error
	syscall		
EXIT:					

	li $v0, 10			#exit
	syscall	

