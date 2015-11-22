.data
datanames:	.asciiz	"julia", "steven", "daniel", "kate", "adrian"
cities:		.asciiz	"boston", "new york", "chicago", "pittsburgh", "denver" 	
prompt1: 	.asciiz "Please enter a name\n"
prompt2: 	.asciiz "City is: "
prompt3: 	.asciiz "Not found!\n"
newline: 	.asciiz "\n"
input1:	 	.space 	64

.text
	li 	$v0, 4		#Print prompt 1
	la 	$a0, prompt1
	syscall
	
  	li      $v0, 8    	#Read user input to input1
  	la      $a0, input1    	
  	li      $a1, 64    
  	syscall	
  	
  	la	$s0, input1 		#s0 = input
  	add	$s1, $zero, $zero	#s1 = index
  					#s2 = result
loop:	
	la	$a0, datanames
	la	$a1, input1
	la	$a2, $s1	
	jal 	checkname
	
  	bne 	$s2, 1, found
	la	$a0, cities
	move	$a1, $s2
	jal 	lookup
found:

	addi 	$s1, $s1, 1
  	bne 	$s2, 5, notfound
  	li 	$v0, 4			#Print prompt 3
	la 	$a0, prompt3
	syscall	
	li 	$v0, 4
	la 	$a0, newline	
	syscall	
    	li 	$v0, 10			#exit
	syscall	
notfound:	

j	loop

checkname:
	move 	$t0, $a0
	move 	$t1, $a1
	move 	$t2, $a2	
	
	jr	$ra
	
lookup:
	move 	$t0, $a0
	move 	$t1, $a1
	sw 	$t2, cities($a2)
  	li 	$v0, 4			#Print prompt 2
	la 	$a0, prompt3
	syscall	
#CITYNAME
	li 	$v0, 4
	la 	$a0, newline	
	syscall
  	li 	$v0, 10			#exit
	syscall	
	jr	$ra	
		