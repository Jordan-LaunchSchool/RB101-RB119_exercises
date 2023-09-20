=begin
	- write a method that takes a string
	- have the method return that string with all non-alphabetic
	characters characters replaced by sapces
	- if one or more non-alpha chracters occurs in a row, you
		should only have one space in the result
		- the result should never have consecutive spaces

EXAMPLES:
cleanup("---what's my +*& line?") == ' what s my line '

ALGO:
		- create a lower case alpha constant

		- define a method that takes a string
		- create a result string
			- iterate over the strings characters.
			- if the current character is not in the alpha constant
					- add a space to result unless the last character added was a space
			- otherwise, add the character to the result string
		- return the result string
=end

ALPHA = ('a'..'z').to_a

def cleanup(input_string)
	result = ''
	input_string.each_char do |char|
		char = ALPHA.include?(char) ? char : ' ' 
		result << char
	end
	result.squeeze(' ')
end


p cleanup("---what's my +*& line?") == ' what s my line '