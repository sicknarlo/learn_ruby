class Temperature

	def initialize(options = {})
		@options = options
	end

	def in_fahrenheit
		@options.key?(:f) ? @options[:f] : (@options[:c] * 9.0 / 5) + 32
	end

	def in_celsius
		@options.key?(:c) ? @options[:c] : (@options[:f] - 32) * 5.0 / 9
	end

	def self.from_celsius(n)
		self.new(:c => n)
	end

	def self.from_fahrenheit(n)
		self.new(:f => n)
	end

end

class Celsius < Temperature

	def initialize(n, options = {})
		@options = options
		@options[:c] = n
	end

end

class Fahrenheit < Temperature

	def initialize(n, options = {})
		@options = options
		@options[:f] = n
	end

end