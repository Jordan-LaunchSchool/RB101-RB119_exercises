=begin
	- write a method that takes a string as an argument
	- have the method return a new string in which every uppercase letter
	is replace by its lower case version and every lower case is replaced by its upper case
	- you may not use swapcase

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

ALGO:
		- create a lowercase array constant
		- create an uppercase array constant

		- define a method that takes a string
		- create an empty result string

		- iterate over over each character of the string
			- if the current character is included in the lower case array
					- add the uppercase version of it to the result string
			- if the current chracter is incliuded in the uppercase array
				- add the lower case version of it
			- otherwise, add the character to the result array

		- return the result string
=end

LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def swapcase(input_string)
	result = ''
	input_string.each_char do |char|
		case
		when LOWER_CASE.include?(char)
			result << char.upcase
		when UPPER_CASE.include?(char)
			result << char.downcase
		else
			result << char
		end
	end
	result
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'