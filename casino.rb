# CASINO PROJOECT

# Basic Objectives:

# Start game player has a name and an initial bankroll
# Player can go to different games via menu
# Slots
# High / Low
# Player places bet and wins / loses (hint: rand)
    # 3 different Classes (place bet/Win/Loss)
# Player's bankroll goes up and down with wins and losses


# def welcome
# # WELCOME TO THE RUBY CASINO
    #
# end

#SAM
def menu
# # MAIN MENU AND GAME SELECTION
end

#ERNIE
# def player
  puts "What is your gambling name?"
#   #How much would you deposit?
# end











# #Class = Moving Money

#     # def bet
#     # def wins
#     # def lose
#     # combine win/lose

# # Bonus Objectives:






## SLOT MACHINE
# def multiplier(s1, s2, s3)
#   if s1==s2 && s2==s3
#     3
#   elsif s1==s2 || s2==s3 || s1==s3
#     2
#   else
#     0
#   end
# end

# def run_slots!
#   slotImageList = %w[Cherry Orange Plum Bell Melon Bar]

#   print "How much total money would you like to play with today? "
#   cash = gets.chomp.to_i
#   loop do
#     puts "Total cash:  $#{cash}"
#     print "How much would you like to bet? "
#     bet = gets.chomp.to_i

#     cash -= bet

#     slotImage1 = slotImageList.sample
#     slotImage2 = slotImageList.sample
#     slotImage3 = slotImageList.sample

#     puts "#{slotImage1} - #{slotImage2} - #{slotImage3}"

#     winnings = bet * multiplier(slotImage1, slotImage2, slotImage3)
#     puts "You have won $#{winnings}"

#     cash += winnings

#     print "Would you like to continue? (yes to continue) "
#     unless gets.chomp=="yes"
#       puts "You have ended with $#{cash}"
#       break
#     end
#   end
# end

# run_slots! if __FILE__==$0
# Ability to move to and from games
# Find a gem that allows you to play sound and find casino sounds that will play on each game change/events
# Gem discovery: go to rubygems.org and find more gems that you want to implement in your project and use
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
# Find ASCII Art and put it into your games/menus to make it more fun for the end user
# Ability to switch players (player menu, bankroll information)
# Player's bankroll persists while moving from game to game
# Player's bankroll persists if you switch to different players
# Random events occur when changing games that can increase or decrease player's bankroll
# Roulette
# Craps
# Build a card deck 
# Card games (Blackjack, Poker, Casino War, etc...)
# Any other Casino game you can think of
# Create your own game