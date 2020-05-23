


class SlotMachine


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

    def play
        slotImageList = %w[Cherry Orange Plum Bell Melon Bar]
        
        puts @bankroll
        
   
        loop do
             puts "Total cash:  $#{@bankroll}"
            print "How much would you like to bet? "
            bet = gets.chomp.to_i

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
                
                
                @casino = Casino.new(@bankroll)
                @casino.menu
            break
            end
      end
    end
  end

