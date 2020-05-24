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
      # flip = 1? puts "It was heads" : puts "Its was tails"
      if choose = flip
        @winnings = 2 * bet
        puts "Yay! You've won $#{@winnings}!"
        @bankroll += @winnings
      else
        puts "Boo! Better luck next time!"
      end
    
                          # puts "1. Heads or 2. tails"
                          # choose = gets.to_i
                          # if rand.round == 0
                          #   coin = 1
                          #   puts "it was heads"
                          # else 
                          #   coin = 2
                          #   puts "it was tails"
                          # end
                          # if choose == coin
                          # winnings = bet * 2
                          # puts "Yay! You've won $#{@winnings}!"

                          # @bankroll += winnings
                          # else 
                          # puts "Boo! Better luck next time!"
                          # end

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




# # COIN TOSS GAME

# require_relative 'casino.rb'
# require_relative 'move_money.rb'


# class Coin_toss
#   def self.play                       #doesn't take paramenters, just needs to start game
#     wallet = 1000
#     # ct = Move_money.new               #need to use bet method from Move_money
#     # ct.bet                            #created a new instance to do so
#     puts "Bet?"
#     bet = gets.to_i
#     puts "What do you want to bet on? Heads or tails: "
#     guess = gets.to_s                         #initializes player to make a guess
#     flip = rand(0..1)                            #random number between 0 and 1
#     if rand == 0                                 #determines heads or tails
#       flip = "heads"
#     else
#       flip = "tails"
#     end

#     if guess == flip                           #determines win or lose
#       puts "Yay!"
#       wallet = wallet + bet
#       puts wallet
#       # Move_money.win       
#     else
#       puts "boo"
#       wallet = wallet - bet
#       puts wallet
#       # Move_money.lose
#     end
#   end
# end



# Coin_toss.play



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


