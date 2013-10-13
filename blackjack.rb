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
cards = %w(2 3 4 5 6 7 8 9 10 J Q K A) *4
puts cards.sample(2)




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

# cards.sort_by {rand}
# hand =[cards.pop, cards.pop]

hand1=cards.sample
hand2=cards.sample

hand = [hand1, hand2]

puts "You have a " + hand[0] + " and a " + hand[1]

score=0
hand.each do |value|
  # hand=cards.sample
  # puts "your first card is a " + hand

  if value =~ /^[2,3,4,5,6,7,8,9]/
    score == value.to_i end

  if value =~ /^[j,k,q]/
    score += 10 end

  if /[a]/ =~ value
        if score + 11 > 21
          score += 1
          #not working here
        elsif
          score += 11
        end
    end
end

puts "Your score is " + score


# end
# puts hand[0].to_i + hand[1].to_i






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
