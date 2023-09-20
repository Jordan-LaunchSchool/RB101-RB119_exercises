=begin
	- write a method that takes a string
	- have the method return a string in which
	the first and last letters of each word are swapped

	- you may assume every word contains at least one letter
	and the string will always contain atleast one word
	

EXAMPLES:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
[0, -1] = [-1, 0]

swap('Abcde') == 'ebcdA'
swap('a') == 'a'

ALGO:
	- define a method that takes a string
	- split the string into an array of words
	- iterate over the array
		- have the first and last character swapped by using index reassignment
		the first character assigned to the last character, the last character assigned to the first
		character of the current interation in place
		- return the word
		- return the array with the new mutations
		- join the array with spaces

=end

def swap(input_string)
	result = input_string.split.map do |word|
		word[0], word[-1] = word[-1], word[0]
		word
	end
	result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'