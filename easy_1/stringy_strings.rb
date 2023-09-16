=begin
	- write a method tha takes an argument, a positive integer
	- have the method return a string of alternating 1's and 0's
	always starting with 1
	- the length of the string should match the given integer

EXAMPLES: 
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

ALGO:
	- define a method that takes an integer
	- create an empty result string
	- begin a range from 0, upto input integer,
	- create a block parameter for the index
	- if the index is even add '1' to the string
	- if the index is odd, add '0' to the string

	- return the result string
=end

def stringy(input_integer)
	(0...input_integer).map { |index| index.even? ? '1' : '0' }.join
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'