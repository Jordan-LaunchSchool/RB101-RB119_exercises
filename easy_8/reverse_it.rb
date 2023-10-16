=begin
	- write a method that takes a string
	- have t he method return words that contain 5 characters or more reversed. 
	- each string will consist of only letters and spaces
	- space should be included only when more than one word is present

EXAMPLES:
puts reverse_words('Professional')          # => lanoisseforP


puts reverse_words('Walk around the block') # => Walk dnuora the kcolb 
=> split into array => 5 chars or more reverse => array size > 1? => true: join with space.. false: convert to string
puts reverse_words('Launch School')         # => hcnuaL loohcS


ALGO:
	- define a method that takes a string
	- split the string into an array of words
	- iterate over the array
		- if the current iteration character size equal to or greater than 5
			- return the current word reversed
		- otherwise return the current word
	- if the size of the returned array is greater that 1, return the array joined with a space
	- otherwise convert and return the result array as a string
=end

def reverse_words(input_string)
	input_string.split.map do |word|
		word.size >= 5 ? word.reverse : word
	end.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS