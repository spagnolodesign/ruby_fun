## Small game to explain If and Case statments conditional
    

puts "Welcome to a game of 'Break a leg'"

# It is started with "y" so that the game immediately goes into the first iteration.
play_again = "y"

# We keep playing while they say "y"
while play_again == "y"

    # Our win flag, to know if they won yet
    win = false
	
    # Generate random number between 1 - 100
    rand_num = rand(100) + 1

    puts "Please enter a number (1-100) or -1 to exit: "
	
    # While we haven't won yet, keep prompting for numbers and comparing.
    while !win
        # Get number from user
        guess_n = gets.to_i

        # Wants to quit
        if guess_n == -1 then
            break
        end
		
        # Lets compare our number to computer number
        if guess_n > rand_num then
            puts "Too high, try again."
        elsif guess_n < rand_num then
            puts "Too low, try again."
        else
            puts "You win!"
            win = true
        end
    end
	
    # If we reached here, the game has ended, ask the user if they want to play again.
    puts "Want to play again? (y/n)"
    play_again = gets.chomp!
end

puts "Thanks for playing!"