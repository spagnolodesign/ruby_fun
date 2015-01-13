## typeOf
$s = "type of string"
$i = 0
$a = [1,2,3,4]

def typeOf
	puts $s.is_a? String
	puts $i.is_a? Fixnum 
	puts $a.is_a? Array  
end

