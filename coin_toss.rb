
class CoinToss
  attr_accessor :bankroll


    
  def initialize(bankroll)
      @bankroll = bankroll
      
  end

  def play

    loop do
           puts "Total cash:  $#{@bankroll}"
          print "How much would you like to bet? "
          bet = gets.chomp.to_i
          @bankroll -= bet

          puts "1. Heads or 2. tails"
          choose = gets.to_i
          flip = rand(2)
          if flip = 0;
           puts "it was heads"
          else puts "it was tails"
          end
          if choose === flip + 1
          winnings = bet * 2
          puts "You have won $#{winnings}"

          @bankroll += winnings
          else 
          puts "You have lost"
          end

          print "Would you like to continue? (y to continue) "
          unless gets.chomp=="y" 
          puts "You have ended with $#{@bankroll}"
              
              #goto menu in casino.rb
              @casino = Casino.new(@bankroll)
              @casino.menu
          break
          end
        end     
    
  end
end



