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
		          while true
		          	puts "What is your first input number?"
		            first_num = gets.chomp
		            if (first_num.class = "Float" || first_num.class = "Fixnum") #may cause error with large numbers...
		              while true 
		              	puts "Would you like to add, subtract, multiply, or divide that number?"
		            	  function = gets.chomp.downcase
	               		if (function == 'add' || function == 'subtract' || function == 'multiply' || function == 'divide' )
		                  while true 
		                  	puts "What would you like to #{function} from #{first_num}"
		                    second_num = gets.chomp
		                    if (second_num.class = "Float" || second_num.class = "Fixnum") #may cause error with large numbers...
	               	        if function == "add"
	                       	  puts (first_num.to_f + second_num.to_f)
	                   	    elsif function == "subtract"
	              	          puts (first_num.to_f - second_num.to_f)
	               	        elsif function == "multiply"
	                          puts (first_num.to_f * second_num.to_f)
	                        else function == "divide"
	                          puts (first_num.to_f / second_num.to_f)
                  	      end
                          break
                        else
                          puts "#{second_num} is not a correct number, please re-enter"
                        end    
		                  end
		                  break
		                else
		                  puts "#{function} is not correct, please check your spelling and retry."
		              	end
		              end
		              break
		            else
		            	puts "#{first_num} is not a correct number, please re-enter"
		            end
	            end
		          while true
		            puts "Would you like to use the calculator again?"
		            run = gets.chomp.downcase	
		            if (run == 'yes' || run == 'no')
		              if run == "yes"
		                run = true
		              else puts "Okay, see you later!"
		                run = false
		              end
		              break
		            else
		              puts 'Please answer "yes" or "no".'
		            end
		          end  	
		        else
		          while true
		          	puts "What number are you going to use for the advanced calculator?"
		            adv_num = gets.chomp
		            if (adv_num.class = "Float" || adv_num.class = "Fixnum") #may cause error with large numbers...
		              while true
		              	puts 'Would you like to find the "square" or the "square root"?'
			              adv_answer = gets.chomp.downcase
				            if (adv_answer == "square" || adv_answer == "square root")
				            	if adv_answer == "square"
						            puts (adv_num.to_f**2)
						          else adv_answer == "square root"
						            puts (adv_num.to_f**0.5)
					            end
					            break
					          else
					            puts 'Please answer "square" or "square root".'
					          end
					        end
					        break
					      else
					        puts "#{adv_num} is not a correct number, please re-enter"
					      end  
				      end    		
		          while true
		            puts "Would you like to use the calculator again?"
		            run = gets.chomp.downcase	
		            if (run == 'yes' || run == 'no')
		              if run == "yes"
		                run = true
		              else puts "Okay, see you later!"
		                run = false
		              end
		              break
		            else
		              puts 'Please answer "yes" or "no".'
		            end
		          end
		        end
		        break  
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