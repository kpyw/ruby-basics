# CHALLENGES:
#
# Can you simulate a hand of blackjack?
#
# 1. Randomly choose two cards from a standard deck of 52 cards.
# HINT: Don't worry about the suits.  Just the card value/face matters.
# HINT: Arrays have a #sample method that can (optionally) accept a parameter.
#
# Example Output #1:
# 5 8
#
# Example Output #2:
# Q 6
#
# Example Output #3:
# 2 A

#need to create a deck with 52 cards
cards = [
 {'card'=>'2', 'value'=>2},
 {'card'=>'3', 'value'=>3},
 {'card'=>'4', 'value'=>4},
 {'card'=>'5', 'value'=>5},
 {'card'=>'6', 'value'=>6},
 {'card'=>'7', 'value'=>7},
 {'card'=>'8', 'value'=>8},
 {'card'=>'9', 'value'=>9},
 {'card'=>'10', 'value'=>10},
 {'card'=>'J', 'value'=>10},
 {'card'=>'Q', 'value'=>10},
 {'card'=>'K', 'value'=>10},
 {'card'=>'A', 'value'=>11}
   ]
# puts cards.class
# puts cards.sample(2)




# 2. Enhance #1 by showing the total score.
# HINT: Consider all aces to have a value of 11.
# Example Output #1:
#
# 5 8
# You have 13.
#
# Example Output #2:
# Q 6
# You have 16.
#
# Example Output #3:
# 2 A
# You have 13.

cards.sort_by {rand}
# hand =[cards.pop, cards.pop]

hand1=cards.sample
hand2=cards.sample

hand = [hand1, hand2]
# puts hand1.class - hand1 is an array

puts "You have a " + hand1['card'] + " and a " + hand2['card']

score = hand1['value'].to_i + hand2['value'].to_i

puts "You have " + score.to_s







# 3. Enhance #2 by adding a card if the score is less than 17.
# Example Output #1:
# 2 A 6
# You have 19.

# Example Output #1:
# Q A
# You have 20.






# 4. Enhance #3 by displaying a message if the score is over 21.
# Example Output #1:
# 7 A 6
# You have 24.
# You're busted!







# 5. Enhance #4 by considering an Ace to be 1 if it would prevent
# the total score from going over 21.
# Example Output #1:
# 4 A 9
# You have 14.
