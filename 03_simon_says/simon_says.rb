def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, n=2)
	word + ((" " + word) * (n - 1))
end

def start_of_word(word, i)
	word[0..i - 1]
end

def first_word(sentence)
	sentence.split(' ')[0]
end

def titleize(word)
	word.split(' ').each{ |i| i.capitalize!}.join(' ')
end