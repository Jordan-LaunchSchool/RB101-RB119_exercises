=begin
	 - write a method that takes a string
	 - have the method return a new string in which each character
	 is doubled

	 ALGO:
	 - define a method that takes a string
	 - create an empty result string
	 - iterate over the characters that are input
	 	- add the character multiplied by 2 to the result string
		- return the result string
=end

def repeater(input_string)
	input_string.chars.map { |char| char * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''