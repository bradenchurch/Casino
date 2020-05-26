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

      puts "Your bet: $#{bet}"
      puts "Choose Heads or Tails:"
      puts "1) Heads"
      puts "2) Tails"

      choose = gets.strip.to_i

      flip = rand(1..2).to_i #random 1 or 2
      flip = 1 ? (puts "It was heads!") : (puts "It was tails!")

      if choose == flip
        @winnings = 2 * bet
        puts "Yay! You won $#{@winnings}!"
        @bankroll += @winnings
      else
        puts "Boo! Better luck next time!"
      end
        print "Would you like to continue? (y to continue) "
        unless gets.chomp=="y" 
          puts "You have ended with $#{@bankroll}."
          @casino = Casino.new(@bankroll)
          @casino.menu
          break
        end
    end
  end
end