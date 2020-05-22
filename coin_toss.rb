ch# COIN TOSS GAME
require_relative 'bankroll.rb'
class CoinToss
  attr_accessor :bet, :choose   #takes how much they want to bet on the game and heads/tails

  def initialize(bet, choose)
    @choose = choose
    @bet = bet
  end

  def play
    puts "How much do you want to bet?"
    bet = gets.to_i 
    puts "Heads or tails"
    choose = gets.to_s
    flip = rand(1)    #random number between 0 and 1
    if choose = flip
      win       
    else
      lose
    end
  end
end




class Move_money
  def bet
    "how much?"
    if bet > wallet
      "Whoops! Try Again" #invalid_answer method? 
      bet
    else
      #continue
    end
  end

  def win
    "Yay! You've won!"
    @wallet = @wallet + bet
  end

  def lose
    "Boo! Better luck next time!"
    @wallet = @wallet - bet
  end
end