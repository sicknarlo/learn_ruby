def translate(words)

	vowels = ['a','e', 'i', 'o', 'u']

	vowels.length.times do |i|
		vowels << vowels[i].upcase
	end

	words_in_array = words.split(' ')
	array_to_return = []

	words_in_array.each do |word|

		if word[0..2].include? "qu"
			
			if word[0] == "q"

				word = word[2..-1] + word[0..1] + "ay"

			else

				word = word[3..-1] + word[0..2] + "ay"

			end

		elsif vowels.include? word[0]
			word << "ay"
		
		else
			if vowels.include? word[1]
				word = word[1..-1] + word[0] + "ay"
			elsif vowels.include? word[2]
				word = word[2..-1] + word[0..1] + "ay"
			else
				word = word[3..-1] + word[0..2] + "ay"
			end
		end

		array_to_return << word

	end

	return array_to_return.join(' ')

end