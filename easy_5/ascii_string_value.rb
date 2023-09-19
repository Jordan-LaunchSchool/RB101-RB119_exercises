=begin
	- write a method that takes a string
	- have the method return the ascii string value
	which is the sum of the ascii value of every character in tne
	string

EXAMPLES:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

ALGO:
	- define a method that takes a string
	- iterate over the characters of the input string
	- return a new array where each element is the ascii value
	- find and return the sum of the new array 

=end

def ascii_value(input_string)
	input_string.chars.map { |char| char.ord }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0