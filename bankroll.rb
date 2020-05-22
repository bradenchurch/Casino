

class Bankroll
#  

    attr_accessor :wallet
    

    def initialize(wallet)
        @wallet = wallet
    end

    def display_wallet
        #show how much money player has
        wallet
    end

end

# amount = Bankroll.new(0)
# amount.display_wallet

# p amount