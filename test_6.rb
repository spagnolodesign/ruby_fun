## Welcome to 'I guess your number'
   ##Exercise for don't repeat yourself when you write code.
questions = [   
            "Question 1?",
            "Question 2?", 
            "Question 3?", 
            "Question 4?", 
            "Question 5?"
        ]

puts questions[0]

# questions.each_with_index do |question, i|
#   question_maker(i)
# end

# def question_maker(n)
#     puts n
#   # while true
#   #   print "Would you like to go next step? [y/n]: "
#   #   case gets.strip
#   #     when 'Y', 'y', 'j', 'J', 'yes' #j for Germans (Ja)
#   #       puts 'I play' # Game.play
#   #     when /\A[nN]o?\Z/ #n or no
#   #       break 
#   #   end
#   # end
# end