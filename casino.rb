# CASINO PROJOECT

# Basic Objectives - ALL MET:
# Start game player has a name and an initial bankroll
# Player can go to different games via menu
#   1.Coin Toss
#   2. Slots
# Player places bet and wins / loses (hint: rand)
# Player's bankroll goes up and down with wins and losses

# Completed Bonus Objectives:
# Player's bankroll persists while moving from game to game
# Ability to move to and from games

#Possible Bonus Objective:
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
  # This is the bankroll. It seems like there is WET code in Slots and Coin Toss:
  # print "How much would you like to bet? "
  # bet = gets.strip.to_i
  #@bankroll -= bet
  #@bankroll += winnings

require_relative 'coin_toss.rb'
require_relative 'slot_machine.rb'

class Casino
  attr_accessor :bankroll

  def initialize(bankroll)
    @bankroll = bankroll
  end
  
  def welcome_screen
    puts "WELCOME TO THE RUBY CASINO"
    #display ASCII art here
    #play music
    #Sound on/off option
    puts "You have #{@bankroll} Donnie Dollars."
    puts "What is your gambling nickname?"
    @name = gets.strip.to_s
    puts "Thank you for sharing your stimulus check with us, #{@name}."
    menu
  end

  # # MAIN MENU AND GAME SELECTION
  def menu
  
    puts "Which game would you like to play?"
    puts "You have $#{@bankroll}"
    puts "1) Coin Toss"
    puts "2) Slots"
    puts "3) Go Back"
    puts "4) Exit"

    choice = gets.to_i
    case choice
      when 1
        @coin_toss = CoinToss.new(@bankroll)
        @coin_toss.play
      when 2
        @slot_machine = SlotMachine.new(@bankroll)
        @slot_machine.run_slots
      when 3
        welcome_screen
      when 4
        exit
      else 
        puts "Invalid option, please try again."
        menu
    end
  end
end

run_casino = Casino.new(1200)
run_casino.welcome_screen

# # Bonus Objectives:
# Find a gem that allows you to play sound and find casino sounds that will play on each game change/events
# Gem discovery: go to rubygems.org and find more gems that you want to implement in your project and use
# Find ASCII Art and put it into your games/menus to make it more fun for the end user
# Ability to switch players (player menu, bankroll information)
# Player's bankroll persists if you switch to different players
# Random events occur when changing games that can increase or decrease player's bankroll
# Roulette
# Craps
# Build a card deck 
# Card games (Blackjack, Poker, Casino War, etc...)
# Any other Casino game you can think of
# Create your own game