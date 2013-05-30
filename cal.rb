def calcit 
  while true
    puts "Would you like to calculate something?"
    initiate = gets.chomp.downcase
    if (initiate == 'yes' || initiate == 'no')
      if initiate == 'yes'
        while true
        	puts "Would you like to use a basic calulator?"
        	reply = gets.chomp.downcase
		      if (reply == 'yes' || reply == 'no')
		        if reply == 'yes'
		          puts "What is your first input number?"
		          first_num = gets.chomp.to_f
		          puts "Would you like to add, subtract, multiply, or divide that number?"
		          function = gets.chomp.downcase
		          puts "What would you like to #{function} with #{first_num}"
		          second_num = gets.chomp.to_f
		          if function == "add"
		            puts (first_num + second_num)
		          elsif function == "subtract"
		            puts (first_num - second_num)
		          elsif function == "multiply"
		            puts (first_num * second_num)
		          elsif function == "divide"
		            puts (first_num / second_num)
		          else
		            puts "You did not enter a legitimate function for this calculator, so check your spelling."
		          end
		            puts "Would you like to use the calculator again?"
		            run = gets.chomp.downcase	
		            if (run == 'yes' || run == 'no')
		              if run == "yes"
		                run = true
		              else puts "Okay, see you later!"
		                run = false
		              end
		            else
		              puts 'Please answer "yes" or "no".'
		            end	
		        else
		          puts "What number are you going to use for the advanced calculator?"
		          adv_num = gets.chomp.to_f
		          puts 'Would you like to find the "square" or the "square root"?'
		          adv_answer = gets.chomp.downcase
		          if adv_answer == "square"
		            puts (adv_num**2)
		          elsif adv_answer == "square root"
		            puts (adv_num**0.5)
		          else
		            puts 'Please answer "square" or "square root".'
		          end		
		          puts "Would you like to use the calculator again?"
		          run = gets.chomp.downcase	
		          if (run == 'yes' || run == 'no')
		            if run == "yes"
		              run = true
		            else puts "Okay, see you later!"
		              run = false
		            end
		          else
		            puts 'Please answer "yes" or "no".'
		          end
		        end  
		      else
		        puts 'Please answer "yes" or "no".'
		      end
		    end 
      else puts "Okay, see you later!"
        run = false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  run	
end

calcit