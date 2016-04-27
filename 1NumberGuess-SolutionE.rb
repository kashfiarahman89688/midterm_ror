#---------
# name: NumberGuess.rb
#
#----------------

class Screen
 def cls
   puts ("\n" * 30)
   puts "\a"
 end

 def pause
    STDIN.gets
 end

end

class Game

	$average = 0
    $number_played = 0
	def display_greeting
		Console_Screen.cls
		print "\t\t Welcome to the Ruby Number Guessing Game!" +
		"\n\n\n\n\n\n\n\n\n\n\n\n\ Press Enter to " + 
		"continue."

		Console_Screen.pause
	end

	def display_instruction
		Console_Screen.cls
		puts "Instruction:\n\n"

		puts "This game randomly generates a number from 1 to 1000 and "
		puts "challaenges you to identify it in as few guesses and possible "
		
	end

	def generate_number
		randomNo = 1 + rand(1000)
		return randomNo
	end

	def play_game
		number = generate_number
		i =1
		loop do
			if i<=10 then
				i = i+1
			Console_Screen.cls
			if $number_played == "0" 
				$average = "0" 
			else 
				average_result = $average.to_i/($number_played.to_i  == 0 ? 1 : $number_played.to_i )
			end
			#puts "#{number}"
			puts "You are playing #{$number_played} time(s) and your avg of guessing number is #{average_result}"
			print "\nEnter your guess and press the enter key: "

			reply = STDIN.gets
			reply.chop!
			reply = reply.to_i
			#$number_played = $number_played + 1
			#$average = $average + 1
			
			
			if reply < 1 or reply > 1000 then
				if reply == -33 then
					i= i-1
					puts "#{number}"
					Console_Screen.pause
					redo # redo the ciurrent iteration of the loop
				else
					i= i-1
					display_instruction()	
					puts "Invalid input. Press enter to continue."
					Console_Screen.pause
					redo # redo the ciurrent iteration of the loop
				end
			end

			if reply == number then
				Console_Screen.cls
				$average = $average + 1
				if $number_played == "0" 
				$average = "0" 
			else 
				average_result = $average.to_i/($number_played.to_i  == 0 ? 1 : $number_played.to_i )
			end

				puts "You are playing #{$number_played} time(s) and your avg of guessing number is #{average_result}"
				print "You have guessed the number! Press Enter to continue."
				Console_Screen.pause
				break
			elsif reply < number then
				Console_Screen.cls
				
				#$number_played = $number_played + 1
				puts "Your guess is too low! Press enter to continue."
				$average = $average + 1
				if $number_played == "0" 
				$average = "0" 
			else 
				average_result = $average.to_i/($number_played.to_i  == 0 ? 1 : $number_played.to_i )
			end

				puts "You are playing #{$number_played} time(s) and your avg of guessing number is #{average_result}"
				Console_Screen.pause
			elsif reply > number then
				Console_Screen.cls
				#$number_played = $number_played + 1
				$average = $average + 1
				if $number_played == "0" 
				$average = "0" 
			else 
				average_result = $average.to_i/($number_played.to_i  == 0 ? 1 : $number_played.to_i )
			end

				puts "Your guess is too high! Press enter to continue."
				puts "You are playing #{$number_played} time(s) and your avg of guessing number is #{$average}"
				Console_Screen.pause
			end
		else
			puts "You have lost."
			Console_Screen.pause
			break
		end
		end
			
	end

	def display_credits
		Console_Screen.cls
		puts "\t\t\Thanks you for playing the number game!!"
	end

	$noRight = 0

	Console_Screen = Screen.new

	SQ = Game.new

	SQ.display_greeting

	answer = ""

	loop do
		Console_Screen.cls

		print "Are you ready to play the Ruby Number Guessing Game? (y/n): "

		answer = STDIN.gets

		answer.chop!

		break if answer == "y" || answer == "n"
	end

	if answer == "n"

		Console_Screen.cls

		puts "Perhaps anoher time.\n\n"

	else
	
		SQ.display_instruction
		$number_played = $number_played + 1

		loop do
			SQ.play_game

			Console_Screen.cls

			print "Would you like to play again? (y/n): "

			playAgain = STDIN.gets
			playAgain.chop!

			break if playAgain == "n"
			$number_played = $number_played + 1
		end

		SQ.display_credits

	end

end


