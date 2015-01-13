#Conversion temperature from F to C

puts "Would you like convert your 'Fucking' temperature choose from [f] or [c] ??"
response = gets.chomp

case response.downcase
when 'f'
  puts "Insert temp, thank you."
  c = gets.chomp.to_i
  r = f_to(c) 
when 'c'
   puts "Insert temp, thank you."
   f = gets.chomp.to_i
   r = c_to(f) 
end


#translate temperature
## °C to °F	 	Multiply by 9, then divide by 5, then add 32
## °F to °C	 	Deduct 32, then multiply by 5, then divide by 9

def c_to(f) 	
   r = ((f*9) / 5) + 32
   puts "temperature in fahrenheit : #{r} °F"
end

def f_to(c) 	
   r = ((c-32) * 5) / 9
   puts "temperature in celsius : #{r} °C"
end