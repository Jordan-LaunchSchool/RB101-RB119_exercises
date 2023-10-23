=begin
	- write a method that takes an array of words
	- have the method print out groups of words that are anagrams
	- anagrams are words that have the same exact letters in them
	but in a different order
	

EXAMPLES:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

ALGO:
	- write a method that takes an array of words
	- create an empty result array
	- iterate over the input array, word 1
		- iterate over the input array again
		- if word1's characters sorted equal word 2 characters
			sorted, add it to the result array


=end


# def anagrams(input_array)
# 	anagrams_array = input_array.map do |word_1|
# 		result = input_array.select do |word_2|
# 			word_1.chars.sort == word_2.chars.sort
# 		end
# 	end

# 	anagrams_array.uniq.each {|list| p list }
# end

def anagrams(input_array)
	result = {}
	input_array.each do |word|
		key = word.chars.sort.join
		result.has_key?(key) ? result[key] << word : result[key] = [word]
	end
	result.each_value do |anagram_array|
		puts "--------"
		p anagram_array
	end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
	'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
	'flow', 'neon']

anagrams(words)

