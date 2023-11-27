=begin
	- write a method that takes a string as an argument
	- return the letter that occurs the least often in the given string
	- case insensitive, doesnt matter what case
		
	EXAMPLES:
	p least_common_char("Hello World") #== "h"
	p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
	p least_common_char("Mississippi") #== "m"
	p least_common_char("Happy birthday!") #== ' '
	p least_common_char("aaaaaAAAA") #== 'a'

	 -	save all the letters in a hash, set the letter as they key and the
	 number of occurences as the value
	 - convert the hash to an array
	 - sort the 

	 ALGO:
	 - define a method that takes a string
	 - create an empty result hash
	 - downcase the input string
	 - iterate over each character of the string
		- if the current character, DOWNCASED, is not an existing key
				add the key to the hash with the count of the character
				occuring in the input string as the value
	
	- convert the hash to an array and sort by the occurences,
	- return the number of occurences which will be index 1 of element 0
		
=end


def least_common_char(input_string)
	result = {}
	lower_case_string = input_string.downcase
	lower_case_string.each_char do |char|
		result[char] = lower_case_string.count(char) unless result.has_key?(char)
	end

	min_count = result.values.min
	least_common = result.key(min_count)
end

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'


