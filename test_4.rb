#call function with param
	#TestClass.test_function('hi')

class TestClass
    def self.test_function(var)
    	@name = "MARIO"
        puts "I got the following variable: #{var} #{@name}"
    end
end
print @name
TestClass.test_function('hi')