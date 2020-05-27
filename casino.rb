class Wallet
    attr_accessor :balance
  
    def initialize(balance)
      self.balance = balance
    end
  
    def decrease_balance(value)
      self.balance = balance - value
    end
  
    def increase_balance(value)
      self.balance = balance + value
    end
end

class Casino
    attr_accessor :wallet

    def initialize(wallet)
        self.wallet = wallet
    end

    def play_slots
      SlotMachine.new(wallet)
    end

    def menu
  
        puts "Which game would you like to play?"
        puts "You have $#{wallet.balance}"
        puts "1) Coin Toss"
        puts "2) Slots"
        # puts "3) Go Back"
        puts "3) Exit"
    
        choice = gets.to_i
            case choice
                when 1
                    play_coin = CoinToss.new(wallet)
                    play_coin.play
                when 2
                    play_slots = SlotMachine.new(wallet)
                    play_slots.play
                when 3
                    exit
            end
    end
end

class SlotMachine
   
        attr_accessor :wallet
      
        def initialize(wallet)
          self.wallet = wallet
        end

        def multiplier(s1, s2, s3)
              if s1==s2 && s2==s3
                  3
              elsif s1==s2 || s2==s3 || s1==s3
                  2
              else
                  0
              end
        end
      
        def play
              slotImageList = %w[🍒 🍊 🍌 🔔 🍉 💰] ##%w is a shortcut for ["Cherry", "Orange", ...]
              
              
              loop do
                  puts "You have $#{wallet.balance}."
                  print "How much would you like to bet?"
                  bet = gets.strip.to_i
                  wallet.decrease_balance(bet)
                    
                  slotImage1 = slotImageList.sample
                  slotImage2 = slotImageList.sample
                  slotImage3 = slotImageList.sample
      
                  puts "#{slotImage1} - #{slotImage2} - #{slotImage3}"
      
                  winnings = bet * multiplier(slotImage1, slotImage2, slotImage3)
                  puts "You have won $#{winnings}"
                  p wallet.increase_balance(winnings)

                  print "Would you like to continue? (y to continue) "
                  unless gets.chomp=="y" 
                  puts "You have ended with $#{wallet.balance}"
                      
                        casino = Casino.new(wallet)
                      casino.menu
                  break
                  end
                end
          end

        # def play 
            
        #     puts wallet.decrease_balance(50)
        # end
  end

class CoinToss

  attr_accessor :wallet
      
  def initialize(wallet)
    self.wallet = wallet
  end

  def play
    loop do
      puts "You have $#{wallet.balance}."
      print "How much would you like to bet?"
      bet = gets.strip.to_i
      wallet.decrease_balance(bet)

      puts "Your bet: $#{bet}"
      puts "Choose Heads or Tails:"
      puts "1) Heads"
      puts "2) Tails"

      choose = gets.strip.to_i

      flip = rand(1..2).to_i #random 1 or 2

    

      if choose == flip
        winnings = 2 * bet
        puts "Yay! You won $#{winnings}!"
        wallet.increase_balance(winnings)
      else
        puts "Boo! Better luck next time!"
      end
        print "Would you like to continue? (y to continue) "
        unless gets.chomp=="y" 
          puts "You have ended with $#{wallet.balance}."
          @casino = Casino.new(wallet)
          @casino.menu
          break
        end
    end
  end



end
# Players = [
# {name: , wallet: },

# ]
wallet1 = Wallet.new(1200)
wallet2 


casino = Casino.new(wallet)

# casino = Casino.new(Wallet.new(1200))
#puts wallet.balance

casino.menu
