#Ruby calculator by Richard Mable
class Calculator
	#setting the values to be changeable and readable by the user
	attr_accessor :value1, :value2
	#initializing with the two values, making sure they convert to floats for division.
	def initialize(value1, value2)
		@value1 = Float(value1)
		@value2 = Float(value2)
		puts ""
		puts ""
		puts ""
		puts ""
		puts "Welcome to the Calculator! Here's how to use it:"
		puts "'.add' adds, '.subtract' subtracts, '.divide' divides, '.multiply' multiples."
		puts "You can change the values at anytime without creating a new class."
		puts ""
		puts ""
		puts ""
		puts ""
	end
	#function for adding
	def add
		puts @value1 + @value2
	end
	#function for subtracting
	def subtract
		puts @value1 - @value2
	end
	#function for dividing
	def divide
		puts @value1 / @value2
	end
	#function for multiplying
	def multiply
		puts @value1 * @value2
	end

end


