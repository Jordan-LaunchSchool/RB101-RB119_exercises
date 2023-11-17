=begin
	- write a method that takes an array of strings
	- an array containing all of the characters that show up in all strings within the given array
	- include duplicates
	- if the character occurs 3 times but not 4 times, the character should appear 3 times in the final answer

	EXAMPLES:
	p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l'] 
	- take a character from the first word of the array
	- check if that character is included in the remaining words
		- how do we check if the character is in the remaining words?
			- we can check if all characters include 'e', if yes we can add this to the result array but this doesnt solve the number of occurences greater than one
			- how dow we add `l`, to the result array? we need to keep track of the lowest amount of occurences of this character
			in each word
			- this means we need to keep track of the current occurence and the minimum occurence
			- min_occurence_count that is the lowest count of the letter in each word
			- add the character * min_occurence_count to the result string


	p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
	p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
	p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []

	ALGO:
	- define a method that takes an array of strings
	- save the first words characters to an array of chars
	- create an empty result string

	- iterate over the characters #This iteration is to find if all of the words cotain the character
			- char_overall_count will be equal to the characters count in the first word
			- char_current_count is equal to overall count
			- do all of the words include the current character?
					- if yes,
						- iterate over each word,
						- how many times does it occur the least
						- char_current_word_count of occurences, is this less than the char_overall_count of occurence?
						- if it is less, overall min number of occurence is equal to current_number_of_occerences								#This iteration is to find out, what is the least amount of times this character occurs in each word
					...
					- add the current charcter multiplied by the char_overall count to the result string

			- return the result string, split into characters
=end

def common_chars(input_array)
	first_words_chars = input_array[0].chars
	result = ''

	first_words_chars.uniq.each do |char|
		char_overall_count = first_words_chars.size
		if input_array.all? {|word| word.include?(char)}
			input_array.each do |word|
				char_current_word_count = word.count(char)
				char_overall_count = [char_overall_count, char_current_word_count].min
			end
		else
			next
		end
		result << (char * char_overall_count)
	end
	result.split('')
end


p common_chars(['cool', 'lock', 'cook']) # == ['c', 'o']