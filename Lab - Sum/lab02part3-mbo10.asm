.data
y:  	.word	37
z:	.word	0
x:	.word	13
.text
la	$t0, y		#t0 = y
lw	$t0, 0($t0)
la	$t1, x		#t1 = x
lw	$t1, 0($t1)

sub $t2, $t0, $t1	#z=y-x

li	$v0, 1
move	$a0, $t2	#print z
syscall

li $v0, 10		#exit
syscall

