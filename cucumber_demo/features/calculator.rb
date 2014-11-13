class Calculator
	def initialize
		@input = []		
	end

	def <<(number)
		@input.push(number.to_i)
	end

	def add
		@input.inject(:+)
	end

	def subtract
		@input.inject(:-)
	end

	def multiply
		@input.inject(:*)
	end

	def divide
		@input.inject(:/)
	end	
end