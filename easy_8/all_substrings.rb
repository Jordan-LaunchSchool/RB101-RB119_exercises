=begin
	- write a method that takes a string
	- have the method return a list of all substrings 
	- the returned list should be ordered by where the in the string the
	substring begins
	- all substrings taht start at position 0 should come first, then all substrings that
	start at position 1
	- since multple substrings will occur at teach position, the substrings at a given posistion
	should be returned in order from shortest to longest
	- you may use the leading substrings method you wrote in the previous exercise

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', => [0..0], [0..1], [0..2], [0..3], [0..4], [0..4]
  'b', 'bc', 'bcd', 'bcde', 				=> [1..0], [1..1], [1..2], [1..3], [1..3]
  'c', 'cd', 'cde',									=> [2..0], [2..1], [2..2]
  'd', 'de',
  'e'
]

ALGO:
	- define a method that takes a string
	- create an empty result array
	- add each substring to result array
		- add the input string to the leading substring method
		- add the input string + index 1 to the leading method
	- return the result array




=end


def leading_substrings(input_string)
	input_string.chars.each_index.map do |index|
		input_string[0..index]
	end
end

def substrings(input_string)
	sub_strings = []
	starting_index = 0
	until starting_index == input_string.size
		sub_strings << leading_substrings(input_string[starting_index..-1])
		starting_index += 1
	end
	sub_strings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde', 			
  'c', 'cd', 'cde',									
  'd', 'de',
  'e'
]