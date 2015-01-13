## Welcome to Break a leg
puts "Welcome to a game of 'Break a leg'"

#global_var
$win = false
$play_again = "y"
$attempts = 0
$rand_num = 0
$user_num = 0


## ------ Compare number from guess nuber and user nuber ------- ##
def compare_number(rand_num, user_num)
    low_high($user_num, $rand_num) #return message from user is low or high
    puts "You still have #{$attempts}/3 attempts"
    return rand_num == user_num
end

## ------ GameOver ------- ##
def play_a_def
    puts "Game Over, #{$attempts}/3, Want to play again? (y/n)"
    $attempts = 0
    return gets.chomp!
end

def low_high(a, b)
    if b>a then
        puts "Too high, try again."
    elsif b<a then
        puts "Too low, try again."
    end
end 

## ------ Game engine ------- ##
while $play_again == "y"
    puts "Please enter a number (1-100) or -1 to exit: "
    $rand_num = rand(100) + 1 ## Generate random number between 1 - 100

    while !$win
        $user_num = gets.to_i     ## input from user
        $attempts += 1
        if $user_num == -1 or $attempts == 3  then
            break
        end

        $win = compare_number($rand_num, $user_num)
    end
    
    ## ------ Want to play again?------- ##
    $play_again = play_a_def
end



