$play_again = "y"
$player_cpu_n = 0 
$player_user_n = 0 
$last_games = Array.new

## ------ GameOver ------- ##
def play_a_def
    puts "Want to play again? (y/n)"
    return gets.chomp!
end

#rols
def rool_dice	
  r = Random.new
  r.rand(1..6)
end

def compare_dice(a, b)
    return a <= b
end

def some_method a
    return a
end


## ------ Game engine ------- ##
while $play_again == "y"
    $win = false
    #player_1
    $player_cpu_n = rool_dice
    puts "Comupter roll result: #{$player_cpu_n}"

    sleep(1)
    
    while !$win
        puts "Please rool your DICE... [rool]"
        response = gets.chomp     ## input from user
        case response.downcase
          when 'rool'
            $player_user_n = rool_dice
            $last_games.push($player_user_n)
            puts "Your rool is: #{$player_user_n}, your last games are:#{$last_games}"
        end
        # if $user_num == -1 or $attempts == 3  then
        #     break
        # end

        $win = compare_dice($player_cpu_n, $player_user_n)
    end
    
    ## ------ Want to play again?------- ##
    $play_again = play_a_def
end