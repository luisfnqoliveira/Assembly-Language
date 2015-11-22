.data
promptn: .asciiz "Please enter a number n:\n"
promptk: .asciiz "Please enter another number k:\n"
printout: .asciiz "The value of choose is "

.text
	li 	$v0, 4		
	la 	$a0, promptn
	syscall
	li	$v0, 5			#read value
	syscall
	move 	$t0, $v0		#store n value in a0	
	
	li 	$v0, 4		
	la 	$a0, promptk
	syscall
	li	$v0, 5			#read value
	syscall
	move 	$t1, $v0		#store k value in a1
	
	move	$a0, $t0
	move	$a1, $t1
	
	jal choose
	move 	$t2, $v0		
	
	li 	$v0, 4		
	la 	$a0, printout
	syscall
	
	move	$a0, $t2	
	li 	$v0, 1	
	syscall
		
	li 	$v0, 10			#exit
	syscall	
	
choose:
	addi 	$sp, $sp, -20
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)
	sw 	$s3, 16($sp)		
	
	move	$s0, $a0
	move	$s1, $a1
	
	bne	$s1, $zero, branch1
	addi	$v0, $zero, 1
	j exit
branch1:

	bne 	$s0, $s1, branch2
	addi	$v0, $zero, 1
	j exit
branch2:
		
	slt 	$t0, $s0, $s1		
	beq	$t0, $zero, branch3
	addi	$v0, $zero, 0
	j exit
branch3:	
	
	subi	$a0, $s0, 1
	subi	$a1, $s1, 1
	jal 	choose
	move	$s2, $v0
	
	subi	$a0, $s0, 1	
	move	$a1, $s1
	jal	choose
	move	$s3, $v0	
	
	add	$v0, $s2, $s3				
	
exit:
	lw 	$ra, 0($sp)
	lw 	$s0, 4($sp)	
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	lw 	$s3, 16($sp)		
	addi 	$sp, $sp, 20	
	jr 	$ra									