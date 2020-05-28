#FINAL VERSION
 # BRADEN, SAM, DANNY, ERNIE

class Wallet
  attr_accessor :player_name, :balance, :all_players, :array_position

  def initialize(player_name, balance, all_players, array_position)
      self.player_name = player_name
      self.balance = balance
      self.all_players = all_players
      self.array_position = array_position
  end

  def decrease_balance(value)
    self.balance = balance - value
  end

  def increase_balance(value)
    self.balance = balance + value
  end

  def show_balance
      puts "You have $#{self.balance}!"
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
      puts "Welcome #{wallet.player_name}"
      puts "Which game would you like to play?"
      wallet.show_balance
      puts "1) Coin Toss"
      puts "2) Slots"
      puts "3) Player Selection"
      puts "4) Exit"
  
      choice = gets.to_i
          case choice
              when 1
                  play_coin = CoinToss.new(wallet)
                  play_coin.play
              when 2
                  play_slots = SlotMachine.new(wallet)
                  play_slots.play
              when 3
                  wallet.all_players[wallet.array_position][:balance] = wallet.balance
                  all_players = AllPlayers.new(wallet.all_players)
                  all_players.run
                  
              when 4
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
                2.6
            elsif s1==s2 || s2==s3 || s1==s3
                1.9
            else
                0
            end
      end
    
      def play
            slotImageList = %w[🍒 🍊 🍌 🔔 🍉 💰]
            
            loop do
                wallet.show_balance
              
                print "How much would you like to bet?"
                bet = gets.strip.to_i
                wallet.decrease_balance(bet)

                  
                slotImage1 = slotImageList.sample
                slotImage2 = slotImageList.sample
                slotImage3 = slotImageList.sample
    
                puts "#{slotImage1} - #{slotImage2} - #{slotImage3}"
    
                winnings = bet * multiplier(slotImage1, slotImage2, slotImage3)
                puts "You have won $#{winnings}"
                wallet.increase_balance(winnings)

                print "Would you like to continue? (y to continue) "
                unless gets.chomp=="y" 
                puts "You have ended with $#{wallet.balance}"
                    
                      casino = Casino.new(wallet)
                    casino.menu
                break
                end
              end
        end
end

class CoinToss

attr_accessor :wallet
    
def initialize(wallet)
  self.wallet = wallet
end

def play
  loop do
    wallet.show_balance
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
          winnings = (2 * bet)
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


class AllPlayers
  
  attr_accessor :all_players

  def initialize (all_players)
      self.all_players = all_players
  end

  def run
      puts "WELCOME TO THE TIGER KING CASINO"
      puts 'Select Your Player'
      puts '1. (Create A New Player)'
      all_players.each_with_index { |item, index| puts "#{index +2}. #{item[:name]} $#{item[:balance]}"}

      choice = gets.chomp.to_i
      if choice == 1
      
          puts "What is your gambling nickname?"
          new_name = gets.chomp.to_s 
          
          all_players.unshift({name: new_name, balance: 700})

          wallet = Wallet.new(all_players.first[:name], all_players.first[:balance], all_players, 0)
          casino = Casino.new(wallet)
          casino.menu

      elsif (choice -2) <= all_players.length
          
          x = (choice - 2)

          current_name = all_players[x][:name]
          current_balance = all_players[x][:balance]
          array_position = x
          
          
          wallet = Wallet.new(current_name, current_balance, all_players, array_position)
          casino = Casino.new(wallet)
          casino.menu
      
      else
          puts 'Invalid Selection'
      end
  end
end

all_players = AllPlayers.new([])
all_players.run
