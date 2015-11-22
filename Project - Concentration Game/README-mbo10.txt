Michael Oles - CS447 - Project 1

For this project I mostly followed the outline given in the help slides.   I started off with a loop.  Inside of it was a timer, code to flip over unmatched cards, 
code to move the smiley and code to check for each button press and respond correctly.  The timer was implement by using a variable to track the total number of 
seconds (starting at 180) I divided this by 60 to find the minutes, and the remainder by 10 to find the ten seconds and by 10 again to find the seconds and then 
decremented the counter.  Every 10 seconds that are taken of moves the smiley to a random location determined by the method rand40.  If two cards are selected and 
unmatched, I set a variable to 3 seconds lower than the time on the clock.  When they are equal I redraw the back faces of the two selected cards.  To store the cards
I use arrays.  One array stores the location of the first LED in every card from 0-39, another stores their value, and a third stores wether they've been marked already.
If two cards are selected and the values are equal, I leave them face up and decrement the number of cards unmatched by 2.  To print the cards I use a method called 
drawCard which find the first position of each card from the location array and the lines to be drawn from the font array.  It cycles line by line and prints out the 
card.  I use drawMark to draw the selector by taking in a color and location.  First the top and bottom lines are calculated and set to the correct values to print the
color, next setLED from the lab is used to draw the sides of each card.  The card locations are shuffled using the algorithm from the description implemented in MIPS.
I believe the game plays correctly with no known bugs.  