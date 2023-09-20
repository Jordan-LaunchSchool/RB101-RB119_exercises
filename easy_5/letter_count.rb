=begin
	- write a method that takes a string with one or more spaces
	seperated by words and returns a hash that shows the number
	of words of different sizes
	- words consist of any string of characters that do not include a space

EXAMPLES:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

ALGO:
	- define a method that takes a string
	- create an empty
	- split the string into an array of words and iterate over the array
	- save the size of the array as a variable
	- if the current word size is a key in the result hash
			add plus one to the value
		- otherwise create key value pair and have the word size as the key and the value as 1
	- return the result hash
=end

def word_sizes(input_string)
	result = {}
	input_string.split.each do |word|
		word_size = word.size
		if result.has_key?(word_size)
			result[word_size] += 1
		else
			result[word_size] = 1
		end
	end
	result
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}