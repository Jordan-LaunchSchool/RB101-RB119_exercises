=begin
# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

	- write a method that takes a string
	- have the method return a string with every second character in every third ord converted
	to uppercase. other characters should remain the same

	Rules:
		- if the word is the third word
				- every second character need to be converted to uppercase



# Examples:


p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
	index => 0, 1, !2 => 3, 4, 5, 
	if index + 1 % 3 == 0 (every third word)
		if its the third word the every odd index is capitalised

# The tests above should print "true".

ALGO:
	- define a method that takes a string
	- split the string into an array of word
	- iterate over the array of words with index, using map
			- if the current index + 1 is divisible by 3
				- save the current words characters to a third word characters variable
				- iterate over the characters of the third_word characters variable with map
					- if the index is odd, (every second character) return the character upcased
				- join the characters back into a word
			- if the current word is not divisible by 3, return the word as is
		- join the array back into a string, return that string
=end

def to_weird_case(input_string)
	input_string.split.map.with_index do |word, index|
		if (index + 1) % 3 == 0
			third_word_characters = word.chars
			third_word_characters = third_word_characters.map.with_index do |char, index|
				index.odd? ? char.upcase : char
			end
			third_word_characters.join('')
		else
			word
		end
	end.join(' ')
end


p to_weird_case('Lorem Ipsum is simply dummy text of the printing')  ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

