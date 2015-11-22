.data
promptX: .asciiz "Please enter the X coordinate of the position: \n"
promptY: .asciiz "Please enter the Y coordinate of the position: \n"
promptSize: .asciiz "Please enter the size: \n"
promptColor: .asciiz "Please enter the color ( ‘g’ ­? green, ‘y’ ­? yellow and ‘r’ ­? red): \n"
newLine: .asciiz "\n"

.text
	li $v0, 4		#Print prompt X
	la $a0, promptX
	syscall
	li	$v0, 5		#Read int
	syscall
	move	$t0, $v0	#t0 contains X
	
	li $v0, 4		#Print prompt Y
	la $a0, promptY
	syscall
	li	$v0, 5		#Read int
	syscall
	move	$t1, $v0	#t1 contains Y
	
	li $v0, 4		#Print prompt Size
	la $a0, promptSize
	syscall
	li	$v0, 5		#Read int
	syscall
	move	$t2, $v0	#t2 contains size
	
	
	li $v0, 4		#Print prompt Color
	la $a0, promptColor
	syscall
	li	$v0, 12			#Read char
	syscall
	move	$t3, $v0		#t3 contains Color					
	addi	$t4, $zero, 0x72	#change color char to value
	bne 	$t3, $t4, red
	addi 	$t3, $zero, 1
red:	
	addi	$t4, $zero, 0x79
	bne 	$t3, $t4, yellow
	addi 	$t3, $zero, 2
yellow:	
	addi	$t4, $zero, 0x67
	bne 	$t3, $t4, green
	addi 	$t3, $zero, 3
green:	
		
	move 	$a0, $t0
	move 	$a1, $t1
	move 	$a2, $t2
	move 	$a3, $t3
		
	jal 	drawSquare
																																																																			
	li $v0, 10			#exit
	syscall	






drawSquare:
	addi 	$sp,$sp,-4
	sw 	$ra, 0($sp)						
	move 	$s0, $a0
	move 	$s1, $a1
	move 	$s2, $a2	
	jal 	drawHorizontalLine
	move 	$a0, $s0
	move 	$a2, $s2	
	add	$a1, $s1, $s2	
	jal 	drawHorizontalLine
	move 	$a0, $s0
	move	$a1, $s1	
	move 	$a2, $s2		
	jal 	drawVerticalLine
	move 	$a0, $s0
	move 	$a2, $s2	
	move	$a1, $s1
	add	$a0, $a0, $a2	
	jal 	drawVerticalLine
	lw 	$ra,0,($sp)
	addi 	$sp,$sp,4				
	jr 	$ra
	
	
drawHorizontalLine:
	addi 	$sp,$sp,-20
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)
	sw 	$s3, 16($sp)
		
	move 	$s0, $a0
	move 	$s1, $a1
	move 	$s2, $a2
	move 	$s3, $a3
		
	add	$s5, $s0, $s2
loopH:	
	beq	$s0, $s5, exitH
	move	$a0, $s0
	move	$a2, $a3	
	jal 	setLED
	addi	$s0, $s0, 1	
	j	loopH
exitH:	

	lw 	$ra, 0($sp)
	lw 	$s0, 4($sp)	
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	lw 	$s3, 16($sp)			
	addi 	$sp,$sp,20
	jr 	$ra
	
		
drawVerticalLine:
	addi 	$sp,$sp,-20
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)
	sw 	$s3, 16($sp)
		
	move 	$s0, $a0
	move 	$s1, $a1
	move 	$s2, $a2
	move 	$s3, $a3
		
	add	$s4, $s1, $s2
	addi	$s4, $s4, 1	
loopV:		
	beq	$s1, $s4, exitV
	move	$a1, $s1
	move	$a2, $a3	
	jal 	setLED
	addi	$s1, $s1, 1	
	j	loopV
exitV:	

	lw 	$ra, 0($sp)
	lw 	$s0, 4($sp)	
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	lw 	$s3, 16($sp)			
	addi 	$sp,$sp,20
	jr 	$ra
																					
	# void setLED(int x, int y, int color)
	#   sets the LED at (x,y) to color
	#   color: 0=off, 1=red, 2=yellow, 3=green
	# arguments: $a0 is x, $a1 is y, $a2 is color
	# trashes:   $t0-$t3
setLED:
	# byte offset into display = y * 16 bytes + (x / 4)
	sll	$t0,$a1,4      # y * 16 bytes
	srl	$t1,$a0,2      # x / 4
	add	$t0,$t0,$t1    # byte offset into display
	li	$t2,0xffff0008 # base address of LED display
	add	$t0,$t2,$t0    # address of byte with the LED
	# now, compute led position in the byte and the mask for it
	andi	$t1,$a0,0x3    # remainder is led position in byte
	neg	$t1,$t1        # negate position for subtraction
	addi	$t1,$t1,3      # bit positions in reverse order
	sll	$t1,$t1,1      # led is 2 bits
	# compute two masks: one to clear field, one to set new color
	li	$t2,3		
	sllv	$t2,$t2,$t1
	not	$t2,$t2        # bit mask for clearing current color
	sllv	$t1,$a2,$t1    # bit mask for setting color
	# get current LED value, set the new field, store it back to LED
	lbu	$t3,0($t0)     # read current LED value	
	and	$t3,$t3,$t2    # clear the field for the color
	or	$t3,$t3,$t1    # set color field
	sb	$t3,0($t0)     # update display
	jr	$ra	

	
	
