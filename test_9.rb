#calculator
def get_int_values	
  [gets, gets].map{ |s| s.chomp.to_i }
end

def sqrt
	value = gets.to_i
	return Math.sqrt(value)  
end

puts "Would you like to [add], [multiply], [subtract] or [sqrt]?"
response = gets.chomp

case response.downcase
when 'add'
  puts "Which numbers would you like to add?"
  operator = :+
when 'subtract'
  puts "Which numbers would you like to subtract?"
  operator = :-
when 'multiply'
  puts "Which numbers would you like to multiply?"
  operator = :*
when 'sqrt'
  puts "Which numbers would you like to sqrt?"
  puts "The answer is... #{ sqrt }"
end

puts get_int_values
answer = get_int_values.inject('operator')
puts "The answer is... #{ answer }"