# CASINO PROJOECT

# Basic Objectives:

# Start game player has a name and an initial bankroll
# Player can go to different games via menu
# Slots
# High / Low
# Player places bet and wins / loses (hint: rand)
    # 3 different Classes (place bet/Win/Loss)
# Player's bankroll goes up and down with wins and losses

require_relative 'bankroll.rb'
#require_relative 'coin_toss.rb'
 require_relative 'slot_machine.rb'
#Arbitrarily (--Presidentially) give them $1200
@@bankroll = Bankroll.new(1200)
# @coin_toss = CoinToss.new(600, heads)
 #@slot_machine = SlotMachine.new (1200)

 @run_game = SlotMachine.new(@@bankroll.display_wallet)

  
def welcome_screen
    puts "WELCOME TO THE RUBY CASINO"
          #display ASCII art here
          #play music
          #Sound on/off option
          puts "You have #{@@bankroll.display_wallet} Donnie Dollars."
          puts "What is your gambling nickname?"
            @name = gets.strip.to_s
          puts "Thank you for sharing your stimulus check with us, #{@name}."
          menu
end



# #SAM
# # MAIN MENU AND GAME SELECTION
def menu
  
  puts "Which game would you like to play?"
  puts "1) Coin Toss"
  puts "2) #game2"
  puts "3) Go Back"
  puts "4) Exit"

  choice = gets.to_i
  case choice
    when 1
      coin_toss
    when 2
      @run_game.run_slots #.bet(@bankroll)
      
    when 3
      welcome_screen
    when 4
      exit
    else 
      puts "Invalid option, please try again."
      menu
  end
end


  



welcome_screen







# #Class = Moving Money

#     # def bet
#     # def wins
#     # def lose
#     # combine win/lose

# # Bonus Objectives:








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