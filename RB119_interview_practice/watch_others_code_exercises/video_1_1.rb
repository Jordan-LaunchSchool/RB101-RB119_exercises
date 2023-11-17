=begin
	- write a method that takes a string
	- have the method check if the string can be constructed by taking a substring of it
	and appending multiple copies of the substring together, if it can return true, otherwise false

	EXAMPLES:
p repeated_substring_patten('abab') == true
p repeated_substring_patten('aba') == false
p repeated_substring_patten('aabaaba') == false
p repeated_substring_patten('abaababaab') == true 
p repeated_substring_patten('abcabcabcabc') == true 

	- substring needs to be more than 1 character
	
ALGO:
	- define a method that takes a string
	- find max substring length (input string / 2)
	- from one upto the max ss length, use the block parameter as the ss slice length eg. no of chars
		- save and create a substring from from index 0 to no of characters
		- sub_string length - input_string_length * sub_string equals the input string, return true 

	- otherwise return false

=end

def repeated_substring_patten(input_string)
	input_string_length = input_string.size
	max_substring_length = (input_string_length / 2)

	1.upto(max_substring_length) do |sub_string_length|
		sub_string = input_string[0, sub_string_length]
		return true if sub_string * (input_string_length / sub_string_length) == input_string
	end
	false
end


p repeated_substring_patten('abab') == true
p repeated_substring_patten('aba') == false
p repeated_substring_patten('aabaaba') == false
p repeated_substring_patten('abaababaab') == true
p repeated_substring_patten('abcabcabcabc') == true