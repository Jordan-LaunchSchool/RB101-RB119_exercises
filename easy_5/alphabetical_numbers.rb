=begin
	- write a method that takes an array of integers
	- have the method return an array of the integers
	sorted based on the english word of each number

EXAMPLES:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

ALGO:
	-	define a method that creates and returns a hash
	with english word is the key and the integer
	is the value
		- create an array of numbers as english words
		- return a hash where the english word is the key and its
		index is the value

	- define a method that takes an array of integers
	- create an empty result array
	- create a keys array from the keys of the created word hash
	- iterate over the input array and add the key from the hash
	to the result array using the correct index

	- iterate over the sorted result array containing the word keys
		- use the current iteration as a key to access the value from the hash
		and add it to the result array
	return the result array


=end

# def initialise_numbers_and_words_hash
# 	numbers_as_words = %w(zero one two three four five six seven eight nine ten
# 	eleven twelve thirteen fourteen fifteen sixteen 
# 	seventeen eighteen nineteen)
# 	numbers_as_words.each_with_index.with_object({}) {|(word, index), hash| hash[word] = index}
# end

# def alphabetic_number_sort(input_array)
# 	result = []
# 	numbers_as_words = initialise_numbers_and_words_hash
# 	words_array = numbers_as_words.keys
# 	input_array.each { |index| result << words_array[index]}
# 	result.sort.map {|num_word| numbers_as_words[num_word]}
# end

NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten
	eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(input_array)
	input_array.sort_by {|number| NUMBER_WORDS[number]}
end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]