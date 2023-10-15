=begin
	- write a method that takes a string
	- have the method return a list of all substrings 
	- the return value should be arranged in order from shortest to longest
	
	EXAMPLES:
	leading_substrings('abc') == ['a', 'ab', 'abc']

ALGO:
	- define a method that takes a string
	- iterate over the characters of the string, return an array, use index
		- return from index 0 to current index

=end

def leading_substrings(input_string)
	input_string.chars.each_index.map do |index|
		input_string[0..index]
	end
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']