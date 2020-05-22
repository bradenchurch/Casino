
# SLOT MACHINE
 require_relative 'bankroll.rb'
# #require_relative 'coin_toss.rb'
 require_relative 'casino.rb'

#?move require_relatives into class?

class SlotMachine
    attr_accessor :bet


    
    def initialize(bet)
        @bet = bet
        
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

    def run_slots#!
        slotImageList = %w[Cherry Orange Plum Bell Melon Bar]
        #@bankroll = Bankroll.new(500)
        puts @@bankroll
        wallet = @bankroll.display_wallet
        # print "Total cash:  $#{@bankroll.display_wallet}"
        #wallet = gets.chomp.to_i
        loop do
             puts "Total cash:  $#{@bankroll.display_wallet}"
            print "How much would you like to bet? "
            bet = gets.chomp.to_i

            #wallet -= bet
            # puts @bankroll.display_wallet #= @bankroll.display_wallet - bet
            wallet -= bet

            slotImage1 = slotImageList.sample
            slotImage2 = slotImageList.sample
            slotImage3 = slotImageList.sample

            puts "#{slotImage1} - #{slotImage2} - #{slotImage3}"

            winnings = bet * multiplier(slotImage1, slotImage2, slotImage3)
            puts "You have won $#{winnings}"

            wallet += winnings

            print "Would you like to continue? (yes to continue) "
            unless gets.chomp=="yes"
            puts "You have ended with $#{wallet}"
            break
            end
      end
    end
  end

  
#   run_game = SlotMachine.new(600)

#   run_game.run_slots