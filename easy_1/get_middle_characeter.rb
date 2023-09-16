=begin
	- write a method that takes a string
	- have the method return the mdidle character of the input string
	- if the argument has an odd length, return one character
	- if the argument has an even length return two characters

EXAMPLES:
center_of('I love ruby') == 'e'
odd lenth => using index 5 => string.size / 2

center_of('Launch School') == ' '
center_of('Launch') == 'un'
even lenth => using index 2 and index 3 => (string.size / 2) - 1 and (string.size / 2)

center_of('Launchschool') == 'hs'
center_of('x') == 'x'

ALGO:
	- define a method that takes a string
	- if the string size is odd
			- return the middle index
	- if the string size is even
			- return the middle index - 1 and the middle index


=end

def center_of(input_string)
	middle_index = input_string.size / 2
	input_string.size.odd? ? input_string[middle_index] : input_string[(middle_index - 1), 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'