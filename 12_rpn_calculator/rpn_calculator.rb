class RPNCalculator < Array

	attr_accessor :stack

	def initialize
		@stack = []
	end

	def push(val)
		@stack << val
	end

	def plus
		if stack.length < 2
			raise "calculator is empty"
		else
			n1 = @stack.pop
			n2 = @stack.pop
			@stack << n2 + n1
		end
	end

	def minus
		if stack.length < 2
			raise "calculator is empty"
		else
			n1 = @stack.pop
			n2 = @stack.pop
			@stack << n2 - n1
		end
	end

	def divide
		if stack.length < 2
			raise "calculator is empty"
		else
			n1 = @stack.pop
			n2 = @stack.pop
			@stack << n2.to_f / n1
		end
	end

	def times
		if stack.length < 2
			raise "calculator is empty"
		else
			n1 = @stack.pop
			n2 = @stack.pop
			@stack << n2.to_f * n1
		end
	end

	def value
		stack[-1]
	end

	def tokens(string)
		@tokens = string.split(" ")
		@tokens.each_index do |i|
			@tokens[i] = @tokens[i].to_sym if %W(+ - / *).include?(@tokens[i])
			@tokens[i] = @tokens[i].to_i unless %i(+ - * /).include?(@tokens[i])
		end
	end

	def evaluate(string)
		@tokens = self.tokens(string)
		@tokens.each do |element|
			if %W(+ - / *).include?(element)
				if element == :+
					self.plus
				elsif element == :-
					self.minus
				elsif element == :/
					self.divide
				elsif element == :*
					self.times
				end
			else
				self.push(element)
			end
		end
	end

end