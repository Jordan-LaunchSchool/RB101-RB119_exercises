=begin
	- write a method that takes a string as an argument
	- have the method return a new string that contains the original value using
	staggered capitalization, every other character is capitalized
	
ALGO:
	- define a method that takes a string
	- create a variable called capitalize equal to true
	- iterate over the strings characters
		- if the capitlize character variable is true
				- return the uppercase version of the character
			- otherwise return a downcase version of the character
		- change the state of the capitalise character variable to its opposite state
	- join the characters back together into a string
=end

def staggered_case(input_string)
	capitalise_character = true
	input_string.chars.map do |char|
		char = capitalise_character ? char.upcase : char.downcase
		capitalise_character = !capitalise_character
		char
	end.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'