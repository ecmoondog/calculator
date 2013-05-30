def calcit
  while true
    if (initiate == 'yes' || initiate == 'no') #try to remove - this is duplicated
      if initiate == 'yes'
        while true
        	puts "Would you like to use a basic calulator?"
        	reply = gets.chomp.downcase
		      if (reply == 'yes' || reply == 'no')
		        if reply == 'yes'
		          while true
		          	puts "What is your first input number?"
		            first_num = gets.chomp
		            if (first_num != "Float" || first_num.class != "Fixnum") #since gets becomes a string - need to find new solution to validate
		              while true 
		              	puts "Would you like to add, subtract, multiply, or divide that number?"
		            	  function = gets.chomp.downcase
	               		if (function == 'add' || function == 'subtract' || function == 'multiply' || function == 'divide' )
		                  while true 
		                  	puts "What would you like to #{function} from #{first_num}"
		                    second_num = gets.chomp
		                    if (second_num.class != "Float" || second_num.class != "Fixnum") #since gets becomes a string - need to find new solution to validate
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
		        else
		          while true
		          	puts "What number are you going to use for the advanced calculator?"
		            adv_num = gets.chomp
		            if (adv_num.class != "Float" || adv_num.class != "Fixnum") #since gets becomes a string - need to find new solution to validate
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
		        end
		        break
		      else
		        puts 'Please answer "yes" or "no".'
		      end
		    end 
      else puts "Okay, see you later!"
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

calcit

while true
  puts "Would you like to use the calculator?"
  rerun = gets.chomp.downcase
  if rerun == "no"
  	puts "Okay, see you later!"
  else
    if rerun == "yes"
      calcit    
    else 
      puts "Please answer 'yes' or 'no'."
    end
    break
  end
end