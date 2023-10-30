=begin
	- write am ethod that takes a sentence as an input
	- have the method return the same string with any sequence of words, 'zero', 'one', 'two'...
	coverted to a string of digits.

	- the string.gsub! method maybe useful

EXAMPLE:
word_to_digit('Please call me at five five five one two three four. Thanks.')
 == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

['Please', 'call', 'me', 'at, 'five']

'five' => 5
input_sentence[4] = number_hash['five']

number_hash = { 'five' => 5 }

ALGO:
	#problem: need to account for 'four.'

	# string.gsub!((/\b#{four}\b/), '4')
	
	- create a numbers hash
	
	- define a method that takes a sentence
	- iterate over the keys of the numbers hash
		- use gsub to substitute the current key with the its value
	- return the input sentence

=end

NUMBER_HASH = {
	'zero' => '0',
	'one' => '1',
	'two' => '2',
	'three' => '3',
	'four' => '4',
	'five' => '5',
	'six' => '6',
	'seven' => '7',
	'eight' => '8',
	'nine' => '9',
}

def word_to_digit(input_sentence)
	NUMBER_HASH.each_key do |number|
		input_sentence.gsub!(/\b#{number}\b/, NUMBER_HASH[number])
	end
	input_sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'