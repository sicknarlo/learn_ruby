def reverser(&block)
	words = block.call.split(' ')
	to_return = []
	words.each do |word|
		word.reverse!
		to_return << word
	end
	to_return.join(' ')
end

def adder(n=1)
	yield + n
end

def repeater(n=1)
	n.times do 
		yield
	end
end