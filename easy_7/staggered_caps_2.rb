=begin
	- modify the method so it ignores non alpha characters


ALGO:
	- create an alphabet constant
	- define a method that takes a string
	- create a empty result string
	- create a variable called capitalize equal to true
	- iterate over the strings characters
		- if the character is not included in the alphabet
			- add it to to the result string
			- skip to the next iteration
		- if the capitalise character is true
				- add an upcase version of the character to the result
		- if the capitalise character si false
				- add a downcase case version to the result strign
		- change the state of the capitalise character (this is skipped if non alpha character)

	- return the result string

=end

ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a


def staggered_case(input_string)
	capitalise_character = true
	result = ''
	input_string.each_char do |char|
		if !ALPHABET.include?(char)
			result << char
			next
		elsif capitalise_character
			result << char.upcase
		else
			result << char.downcase
		end
		capitalise_character = !capitalise_character
	end
	result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
