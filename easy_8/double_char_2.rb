=begin
	- write a method that takes a string
	- have the method return a new string where each consonant is doubled
	- vowels, digits, punctuation and whitespace should not be doubled

EXAMPLES: 
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

ALGO:
 - create a constant of consonants
 - define a method that takes a string
 - iterate over the characters of the string, 
 if the character downcased is a consonant, return the character twice
	- otherwise return the character once
	- return the array joined back into a string
=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(input_string)
	input_string.chars.map do |char|
		CONSONANTS.include?(char.downcase) ? (char * 2) : char
	end.join
end



p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""