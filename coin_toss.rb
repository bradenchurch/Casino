# COIN TOSS GAME
# require_relative 'bankroll.rb'
class CoinToss
  attr_accessor :bankroll

  def initialize(bankroll)
      @bankroll = bankroll
  end

  def play
    loop do
      puts "You have $#{@bankroll}."
      print "How much would you like to bet?"
      bet = gets.strip.to_i
      @bankroll -= bet

      puts "Choose Heads or Tails:"
      puts "1) Heads"
      puts "2) Tails"

      choose = gets.strip.to_i

      flip = 1+rand(1).to_i #random number between 0 and 1
      puts flip
      if choose = flip
        @winnings = 2 * bet
        puts "Yay! You've won $#{@winnings}!"
        @bankroll += @winnings
      else
        puts "Boo! Better luck next time!"
      end
    
      print "Would you like to continue? (y to continue) "
        unless gets.chomp=="y" 
          puts "You have ended with $#{@bankroll}"
          @casino = Casino.new(@bankroll)
          @casino.menu
          break
        end
    end
  end
end

#   def bet
#     "how much?"
#     if bet > wallet
#       "Whoops! Try Again" #invalid_answer method? 
#       bet
#     else
#       #continue
#     end
#   end

#   def win
#     "Yay! You've won!"
#     @wallet = @wallet + bet
#   end

#   def lose
#     "Boo! Better luck next time!"
#     @wallet = @wallet - bet
#   end
# end