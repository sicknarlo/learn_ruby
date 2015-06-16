class Dictionary

	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def add(entry)
		if entry.is_a?(String)
			@entries[entry] = nil
		else
			@entries.merge!(entry)
		end
	end

	def keywords
		@entries.keys
	end

	def include?(key)
		@entries.keys.include?(key)
	end

end