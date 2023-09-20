=begin
	- modify the method from the previous exercise to exclude non-letter when
	determining the word size
	- "it's" is 3 characters in size not 4

ALGO:
- make an alphabet constant array

- define a method that takes a string
- iterate over the strings characters
	- if the current character is not included 

=end

def word_sizes(input_string)
	result = {}
	input_string.split.each do |word|
		word_size = word.gsub(/[^a-zA-Z]/, '').size
		result.has_key?(word_size) ? result[word_size] += 1 : result[word_size] = 1
	end
	result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}