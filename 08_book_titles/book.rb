class Book

	def title
		@title
	end

	def title=(title)
		@title = titlize(title)
	end

	private
	def titlize(title)
		stop_words = ["and", "in", "of", "a", "the", "an"]
		title.capitalize.split.map {|w| stop_words.include?(w) ? w : w.capitalize}.join(" ")
	end

end