.data
prompt1: .asciiz "Please enter your string:\n"
prompt2: .asciiz "Please enter the character to replace:\n"
prompt3: .asciiz "Here is the output:\n"
newline: .asciiz "\n"
input1:	 .space 64

.text
	li $v0, 4		#Print prompt 1
	la $a0, prompt1
	syscall
	
  	li      $v0, 8    	#Read user input to input1
  	la      $a0, input1    
  	li      $a1, 64    
  	syscall	

	li 	$v0, 4		#Print prompt 2
	la 	$a0, prompt2
	syscall	
	
	li	$v0, 12		#Read character to $a1
	syscall
	move	$a1, $v0
 	la	$a0, input1	

	jal	ReplaceLetterWithAsterisk
	
	la	$a0, input1	
	jal	invertCase		
	
	li 	$v0, 4
	la 	$a0, newline	
	syscall		
	li 	$v0, 4		#Print changed input
	la 	$a0, input1
	syscall		

	li $v0, 10			#exit
	syscall


ReplaceLetterWithAsterisk:
	move 	$t0, $a0
	move 	$t1, $a1
	
loop: 	lbu  	$t2, 0($t0)
	beq	$t2, $zero, exit
	
	bne	$t2, $t1, keep
	addi	$t3, $zero, 42
	sb	$t3, 0($t0)
keep:	addi	$t0, $t0, 1

	j	loop
exit:	jr	$ra 



invertCase:
	move	$t0, $a0,
	
loopI: 	lbu  	$t1, 0($t0)
	beq	$t1, $zero, exitI
	
	slti	$t2, $t1, 65
	slti	$t3, $t1, 91
	beq	$t2, $t3, toUpper
	addi	$t1, $t1, 0x20	
	sb	$t1, 0($t0)			
	j 	out
toUpper:
	
	slti	$t2, $t1, 97
	slti	$t3, $t1, 123
	beq	$t2, $t3, toLower		
	subi	$t1, $t1, 0x20
	sb	$t1, 0($t0)	
toLower:

out:
	addi	$t0, $t0, 1
	j	loopI
exitI:	jr	$ra 	