.data

marked: 	.byte 0:40

gameover: 	.asciiz "Game Over\n"
matched:	.asciiz "Number of card pairs matched: "
notmatched: 	.asciiz "Number of card pairs not mathced: "
newline:	.asciiz "\n"

font:		.half
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		##########################
		0xC000, #----X---   0000 0000 1100 0000    
		0xC003, #---XX---   0000 0011 1100 0000   
		0xC00C, #--X-X---   0000 1100 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xFC3f, #-XXXXXX-   0011 1111 1111 1100   
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x3000, #-----X--   0000 0000 0011 0000   
		0xC000, #----X---   0000 0000 1100 0000    
		0x0003, #---X----   0000 0011 0000 0000    
		0x000C, #--X-----   0000 1100 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		##########################
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		##########################
		0x0C00, #------X-   0000 0000 0000 1100    
		0xCC00, #----X-X-   0000 0000 1100 1100    
		0x0C03, #---X--X-   0000 0011 0000 1100    
		0x0C0C, #--X---X-   0000 1100 0000 1100    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		##########################
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		0x0030, #-X------   0011 0000 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		##########################
		0x0C00, #-----X--   0000 0000 0000 1100    
		0x3000, #----X---   0000 0000 0011 0000    
		0x0003, #---X----   0000 0011 0000 0000    
		0xF00F, #--XXXX--   0000 1111 1111 0000
		0x0C30, #-X----X-   0011 0000 0000 1100    	
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		##########################
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x3000, #-----X--   0000 0000 0011 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0x0003, #---X----   0000 0011 0000 0000    
		0x000C, #--X-----   0000 1100 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100   
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100   
		0xFC0F, #--XXXXX-   0000 1111 1111 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100
		########################## (CARD 10)
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		########################## (CARD 11)
		0x0000, #--------   0000 0000 0000 0000
		0x3C3C, #-XX--XX-   0011 1100 0011 1100
		0x0000, #--------   0000 0000 0000 0000
	     	0x0C30, #-X----X-   0011 0000 0000 1100
		0x300C, #--X--X--   0000 1100 0011 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		########################## (CARD 12)
		0x0000, #--------   0000 0000 0000 0000
		0x3C3C, #-XX--XX-   0011 1100 0011 1100
		0x0000, #--------   0000 0000 0000 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x300C, #--x--X--   0000 1100 0011 0000
		0x0C30, #-X----X-   0011 0000 0000 1100
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		########################## (CARD 13)	
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		########################## (CARD 14)
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000  #--------   0000 0000 0000 0000

						
location: .word	#Holds the location on the board of each card
		0xFFFF00a8	#0
		0xFFFF00aa	#1
		0xFFFF00ac	#2
		0xFFFF00ae	#3
		0xFFFF00b0	#4
		0xFFFF00b2	#5
		0xFFFF00b4	#6
		0xFFFF00b6	#7													
		0xFFFF0148	#Row 2	
		0xFFFF014a	#9
		0xFFFF014c	#10
		0xFFFF014e	#11
		0xFFFF0150	#12
		0xFFFF0152	#13
		0xFFFF0154	#14
		0xFFFF0156	#15			
		0xFFFF01e8	#Row 3
		0xFFFF01ea	#17
		0xFFFF01ec	#18
		0xFFFF01ee	#19
		0xFFFF01f0	#20
		0xFFFF01f2	#21
		0xFFFF01f4	#22
		0xFFFF01f6	#23		
		0xFFFF0288	#Row 4
		0xFFFF028a	#25
		0xFFFF028c	#26
		0xFFFF028e	#27
		0xFFFF0290	#28
		0xFFFF0292	#29
		0xFFFF0294	#30
		0xFFFF0296	#31		
		0xFFFF0328	#Row 5
		0xFFFF032a	#33
		0xFFFF032c	#34
		0xFFFF032e	#35
		0xFFFF0330	#36
		0xFFFF0332	#37
		0xFFFF0334	#38
		0xFFFF0336	#39						
		0xFFFF000c	#40-Minutes
		0xFFFF000e	#41-Colon
		0xFFFF0010	#42-Tens
		0xFFFF0012	#43-Seconds
#Starting values of each card, changed after they're shuffled
values: .byte	0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7 ,7 ,7 ,8 ,8 ,8 8, 9, 9, 9, 9
		
.text
#t6 - Marked Card
#t7 - Number Of Cards Showing
#t8 - First Selected Card
#t9 - Second Selected Card
#k0 - Golden Card
#k1 - Number Of Unmatched Cards

#s4 - Total seconds on game clock
#s5 - Time of last update to game clock
#s6 - Time to flip over incorect matches
	jal	shuffle			#Shuffle the deck

	li	$k1, 40			#start with 40 cards
	li 	$v0, 30			#saved time initialized
	syscall
	add	$s5, $zero, $a0			
	addi	$s4, $zero, 180		#User starts with 180 seconds
	li	$s6, -1			#Wait to match to set
	
	#create cards
	move	$s2, $zero
	Li	$s3, 39	
createCards:	
	addi	$a1, $zero, 10		#Draws gameboard of facedown cards
	add	$a0, $zero, $s2
	jal	drawCard	
	beq	$s2, $s3 cardsExit
	addi	$s2, $s2, 1
	j createCards
cardsExit:

	addi	$a0, $zero, 41		#draw time colon
	addi	$a1, $zero, 14			
	jal	drawCard
	
	li	$a0, 0			#set marked card to first card
	li	$a1, 1
	jal 	drawMark
	li	$t6, 0
	
		
timer:
	li	$v0, 30			#get current time
	syscall	
	move	$t0, $a0			
	addi	$s5, $s5, 1000		#check if 1000 miliseconds has passed
	slt 	$t1, $s5, $t0		#t1 = 1 if clock needs to be updated
	move	$s2, $zero		#Used for smiley	
	beq	$t1, $zero, countdown
	add	$s5, $zero, $t0	
	li	$t2, 60			#t2 = number of minutes
	div	$s4, $t2
	mflo	$t2
	mfhi	$t5			
	li	$t3, 10			#t3 = tens of seconds
	div	$t5, $t3
	mflo	$t3
	mfhi	$t5		
	li	$t4, 10			#t4 = number of seconds
	div	$t5, $t4
	mfhi	$t4	
	addi	$s4, $s4, -1		#Decrement Clock
	move	$s1, $t4	
	move	$s2, $t2
	move	$s3, $t3
	addi	$a0, $zero, 43		#draw seconds		
	move	$a1, $s1
	jal	drawCard		
	addi	$a0, $zero, 42		#draw tens
	move	$a1, $s3			
	jal 	drawCard		
	addi	$a0, $zero, 40		#draw minutes
	move	$a1, $s2		
	addi	$s2, $zero, 1		#If the seconds are updated, check if smiley needs to be updated
	jal 	drawCard		
	j 	skip
countdown:				#reset last update time if timer wasnt changed
	subi	$s5, $s5, 1000
skip:


	bne	$s6, $s4, flip		#If 3 seconds has passed since unmarked cards, flip the facedown again
	addi	$a1, $zero, 10		#Flip Card 1
	bne	$k0, $t8, flipToSmiley	#If smiley was originally there print it
	li	$a1, 11
	flipToSmiley:	
	move	$a0, $t8
	jal	drawCard	
	addi	$a1, $zero, 10		#Flip Card 2
	bne	$k0, $t9, flipToSmiley2 #If smiley was originally there print it
	li	$a1, 11
	flipToSmiley2:		
	move	$a0, $t9
	jal	drawCard
	li	$s6, -1			#s6 is -1 until cards need to be flipped again	
	bne	$t6, $t9, checkFlip	#Check if selector needs to be redrawn
	move	$a0, $t9
	li	$a1, 1
	jal	drawMark	
checkFlip:
	bne	$t6, $t8, flip
	move	$a0, $t8
	li	$a1, 1	
	jal	drawMark	
flip:


	beq	$s2, $zero, smileytimer		#Dont update smiley multiple times per second
	bne	$s1, $zero, smileytimer		#when seconds equal zero (every 10 seconds), reset timer
	li	$t0, 179
	beq 	$s4, $t0, firstSmiley		#Skip filling in old card if this is the first smiley drawn
	la	$t2, marked			#Check if an open card for smiley to move to
	add	$t2, $t2, $k0
	lbu	$t2, ($t2)			#t0 contains 0 if spot is open
	bne	$t2, $zero, keepFace	
	beq	$t8, $k0, keepFace
	beq	$t9, $k0, keepFace		
	move	$a0, $k0			#cover up last smiley
	addi	$a1, $zero, 10
	jal	drawCard
	move	$a0, $k0
	li	$a1, 1		
	bne	$t6, $k0, smileyMark
	jal	drawMark
smileyMark:
	j	firstSmiley	
keepFace:
	la	$t1, values			#redraw smiley
	add	$t1, $t1, $k0
	lb 	$a1, ($t1)	
	move	$a0, $k0
	jal     drawCard	
firstSmiley:
	jal	rand40				#find a smiley location
	move	$k0, $v0		
tryNextLoc:
	la	$t2, marked			#Check if an open card for smiley to move to
	add	$t2, $t2, $k0
	lbu	$t2, ($t2)			#t0 contains 0 if spot is open		
	beq	$t2, $zero, goodLocation	#Check if smiley is at a face down card to print
	addi	$k0, $k0, 1		
	j 	tryNextLoc
goodLocation:
	move	$a0, $k0			#print smiley
	addi	$a1, $zero, 11
	jal	drawCard
smileytimer:		
	
	
	li	$t0, -1
	bne	$s4, $t0, timeup	#exit with 0 seconds left
	j	exit
timeup:
	
	li	$t0, 0xFFFF0000		#Check for keypress from user
	lbu 	$t2, ($t0)
	li	$t1, 1
	bne	$t2, $t1, keypress	
	li	$t0, 0xFFFF0004		#Check direction
	lb 	$t2, ($t0)
		
	li	$t1, 0xFFFFFFE3		#Move selector Right if clicked
	li	$t5, 8
	addi	$t4, $t6, 1	
	div	$t4, $t5
	mfhi	$t5	
	beq	$t5, $zero ,wrongRight
	bne	$t2, $t1, rightKey	#Check bounds
	move	$a0, $t6
	move	$a1, $zero
	jal	drawMark
	addi	$t6, $t6, 1
	move	$a0, $t6
	li	$a1, 1
	jal	drawMark
	j 	keypress
rightKey:
wrongRight:

	li	$t1, 0xFFFFFFE2		#Move selector Left if clicked
	li	$t5, 8	
	div	$t6, $t5
	mfhi	$t5	
	beq	$t5, $zero, wrongLeft	#Check Bounds
	bne	$t2, $t1, leftKey
	move	$a0, $t6
	move	$a1, $zero
	jal	drawMark
	addi	$t6, $t6, -1
	move	$a0, $t6
	li	$a1, 1
	jal	drawMark
	j 	keypress
leftKey:
wrongLeft:

	li	$t1, 0xFFFFFFE1		#Move selector Down if clicked
	li	$t5, 32
	slt	$t4, $t6, $t5
	beq	$t4, $zero, wrongDown	#Check Bounds
	bne	$t2, $t1, downKey
	move	$a0, $t6
	move	$a1, $zero
	jal	drawMark
	addi	$t6, $t6, 8
	move	$a0, $t6
	li	$a1, 1
	jal	drawMark
	j 	keypress
downKey:
wrongDown:

	li	$t1, 0xFFFFFFE0		#Move selector Up if clicked
	li	$t5, 8
	slt	$t4, $t6, $t5
	bne	$t4, $zero, wrongUp	#Check Bounds
	bne	$t2, $t1, upKey
	move	$a0, $t6
	move	$a1, $zero
	jal	drawMark
	addi	$t6, $t6, -8
	move	$a0, $t6
	li	$a1, 1
	jal	drawMark
	j 	keypress
upKey:
wrongUp:

	la	$t1, marked			#Check if an open card for smiley to move to
	add	$t1, $t1, $t6
	lbu	$t1, ($t1)			#t0 contains 0 if spot is open
	li	$t3, 1			
	beq	$t1, $t3, bKey	#Check if smiley is at a face down card to print
	li	$t1, -1			
	bne	$t1, $s6, bKey		
	li	$t1, 0x42          	#B KEY PRESSED 
	bne	$t2, $t1, bKey
	la	$t1, values		#Turn Over Card
	add	$t1, $t1, $t6
	lb 	$a1, ($t1)	
	move	$a0, $t6
	jal     drawCard
	move	$a0, $t6
	li	$a1, 1
	jal	drawMark		#Redraw Mark
	syscall	
	bne	$t7, $zero, firstCard	
	move	$t8, $t6		#Do this if this is the First Selected Card
	li	$t7, 1			#One card is now selected
	j 	secondCard
firstCard:
	beq	$t8, $t6, secondCard	#Dont count if the user picks the same card twice
	move	$t9, $t6		#Do this if this is the Second selected Card
	la	$t2, values
	add	$t2, $t2, $t9
	lb 	$t3, ($t2)	
	la	$t2, values
	add	$t2, $t2, $t8
	lb 	$t4, ($t2)	
	bne	$t3, $t4, isMatched	#Match has been found
	sub	$k1, $k1, 2		#Lower unmatched cards since they were matched
	la	$t0, marked		#Mark the cards as found
	li	$t1, 1
	add	$t2, $t0, $t8
	sb	$t1, ($t2)
	li	$t1, 1
	add	$t5, $t0, $t9
	sb	$t1, ($t5)
	bne	$k0, $t8, smileyFirst	#If smiley is same as one of selected cards, then add 30 seconds to gameclock
	addi	$s4, $s4, 30
smileyFirst:
	bne	$k0, $t9, smileySecond
	addi	$s4, $s4, 30
smileySecond:	
isMatched:
	beq	$t3, $t4, notMatched	#If they're not matched set 3 seconds to wait to reset those cards
	subi	$s6, $s4, 3		
notMatched:
	li	$t7, 0			#If that was the second card, reset number of cards selected to zero	
secondCard:		
	
	
	j 	keypress
bKey:
	
	li	$t0, 0xFFFF0000		#Keep looking for keypress	
	li	$t1, 0
	sb 	$t1, ($t0)	
keypress:	

	beq	$k1, 0, exit		#When all cards are matched, exit the game

j timer

exit:
	li 	$v0, 4		#Print gameover
	la 	$a0, gameover
	syscall
	
	li 	$v0, 4		#Print matched
	la 	$a0, matched
	syscall
	li 	$v0, 1		
	addi	$a0, $zero, 40
	sub	$a0, $a0, $k1
	div	$a0, $a0, 2
	syscall	
	li 	$v0, 4		
	la 	$a0, newline
	syscall		
	
	li 	$v0, 4		#Print notmatched
	la 	$a0, notmatched
	syscall
	li 	$v0, 1		
	div	$a0, $k1, 2 
	syscall	
	li 	$v0, 4		
	la 	$a0, newline
	syscall		
	li 	$v0, 10
	syscall
###################################################################################################################################
# a0-Location(0-43) a1-Font(0-15)
drawCard:				#Draws a predetermined card on the gameboard
	la	$t0, location		#Draw at location $a0
	la	$t1, font		#Draw in font $a1
	sll	$a0, $a0, 2     	# * 4 = column
	add	$t0, $t0, $a0	
	lw	$t0, ($t0)
	sll	$a1, $a1, 4      	# * 16 = row
	add	$t1, $t1, $a1
	addi	$t3, $zero, 0		#t3 = counter start
	addi	$t4, $zero, 8		#t4 = counter end
drawLine:
	beq	$t3, $t4, drawExit	#Go through row by row and draw the card
	lhu	$t2, 0($t1)		#Next row of font
	sh	$t2, 0($t0)		#Next row on display
	addi	$t1, $t1, 2
	addi	$t0, $t0, 16
	addi	$t3, $t3, 1
	j 	drawLine
drawExit:
	jr	$ra

# a0-location(0-39) a1-color
drawMark:				#Draws a red box around a card
	addi 	$sp,$sp,-4
	sw 	$ra, 0($sp)

	move	$s0, $a1		#s0 = color	
	move	$s3, $a0		#s3 = location
	la	$t0, location		#set t0 to top left corner	
	sll	$s3, $s3, 2    		
	add	$t0, $t0, $s3		
	lw	$t0, ($t0)

	addi	$s2, $zero, 1
	bne	$s0, $s2, red
	li	$t1, 0x5555		#red line for top/bottom
red:	
	add	$s2, $zero, $zero
	bne	$s0, $s2, black
	li	$t1, 0x0000		#black line for top/bottom
black:	
	addi	$t0, $t0, -16
	sh	$t1, 0($t0)	
	addi	$t0, $t0, 144
	sh	$t1, 0($t0)		
	
	move	$s3, $a0
	la	$t0, location		#set t0 to top left corner	
	sll	$s3, $s3, 2    		
	add	$t0, $t0, $s3		
	lw	$t0, ($t0)	

	sub	$t2, $t0, 0xFFFF0008	#Find appriate X and Y values to pass them through setLED
	li	$t1, 0x10
	div	$t2, $t1
	mflo	$s2			#s2=y
	mfhi	$s1			#s1=x
	move	$t5, $s2		
	sll	$s1, $s1, 2
	addi	$t4, $t5, 8
leftSide:
	beq	$t5, $t4, exitLeft	#Draw the left side of the selector one card at a time
	move	$a0, $s1
	move	$a1, $t5
	move	$a2, $s0
	jal 	setLED
	addi	$t5, $t5, 1
	jal leftSide
exitLeft:
	move	$t5, $s2	
	addi 	$s1, $s1 7
	addi	$t4, $t5, 8	
rightSide:				#Draw the right side of the selector one card at a time
	beq	$t5, $t4, exitRight
	move	$a0, $s1
	move	$a1, $t5
	move	$a2, $s0
	jal 	setLED
	addi	$t5, $t5, 1
	jal rightSide
exitRight:
	lw 	$ra,0,($sp)
	addi 	$sp,$sp,4
	jr 	$ra	
					
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
					
rand40:		#return an int between 0 and 40
	li 	$a1, 40
	li 	$v0, 42
	syscall
	move	$v0, $a0	
	jr 	$ra
	
shuffle:
	addi 	$sp,$sp,-4
	sw 	$ra, 0($sp)
	li	$s0, 1		#s0 = length
	li	$s1, 40
forShuffle:	
	beq	$s0, $s1, shuffleExit	#If all cards have been shuffled, exit
	li	$a0, 84			#Random seed 
	subi	$a1, $s1, 1		#Find random number (r)
	li 	$v0, 42
	syscall
	move	$s2, $a0		#s2 = r
	la	$t0, values
	subi	$s1, $s1, 1
	add	$t1, $t0, $s1		#t1 - i-1 address (last remaining address)
	add	$t2, $t0, $s2		#t2 - r address	
	lbu	$t3, ($t1)		#t3 - cardValues[i-1]
	lbu	$t4, ($t2)		#t4 - cardValues[r]
	sb	$t3, ($t2)		#SWAP
	sb	$t4, ($t1)		#SWAP
	j 	forShuffle
shuffleExit:
	lw 	$ra,0,($sp)
	addi 	$sp,$sp,4
	jr	$ra