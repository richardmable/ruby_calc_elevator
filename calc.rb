class Calculator
	attr_accessor :value1, :value2

	def initialize(value1, value2)
		@value1 = value1
		@value2 = value2
	end

	def add
		puts @value1 + @value2
	end

	def subtract
		puts @value1 - @value2
	end

	def divide
		puts @value1 / @value2
	end

	def multiply
		puts @value1 * @value2
	end
end


