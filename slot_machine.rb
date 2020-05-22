
# SLOT MACHINE
 #require_relative 'bankroll.rb'
# #require_relative 'coin_toss.rb'
 #require_relative 'casino.rb'

#?move require_relatives into class?

class SlotMachine

#require_relative 'casino.rb'
    attr_accessor :bankroll


    
    def initialize(bankroll)
        @bankroll = bankroll
        
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
        puts @bankroll
        
        # print "Total cash:  $#{@bankroll.display_wallet}"
        #wallet = gets.chomp.to_i
        loop do
             puts "Total cash:  $#{@bankroll}"
            print "How much would you like to bet? "
            bet = gets.chomp.to_i

            #wallet -= bet
            # puts @bankroll.display_wallet #= @bankroll.display_wallet - bet
            @bankroll -= bet

            slotImage1 = slotImageList.sample
            slotImage2 = slotImageList.sample
            slotImage3 = slotImageList.sample

            puts "#{slotImage1} - #{slotImage2} - #{slotImage3}"

            winnings = bet * multiplier(slotImage1, slotImage2, slotImage3)
            puts "You have won $#{winnings}"

            @bankroll += winnings



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

  
#   run_game = SlotMachine.new(600)

#   run_game.run_slots