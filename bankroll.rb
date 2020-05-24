BANKROLL

class Bankroll 
    attr_accessor :bankroll
    
    def initialize(bankroll)
        @bankroll = bankroll
        @winnings = winnings
    end

    def make_bet
        puts "You have $#{@bankroll}."
        print "How much would you like to bet?"
        bet = gets.strip.to_i
        @bankroll -= bet

        # IF bet > @ban
    end
        
    def win
        puts "Yay! You've won $#{winnings}!"
        @bankroll += @winnings
    end

end