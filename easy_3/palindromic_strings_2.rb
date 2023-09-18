=begin
	- write a method that takes a string
	- return true if the input string is a palindrome
	- the method is case-insensitive
	- method should ignore all non-alphanumeric characters
	- 

	ALGO:
	- make an alpanumeric constant
	- define a method that takes a string
	- remove all non-alphanumeric characters
		- call the select method on the strings characters, return them if they are in the alphanumeric
		array, join and downcase the string, return a new string
	- see if the remaining character are equal to itself in reverse, return true or false

=end

ALPHANUMERIC = ('0'..'9').to_a + ('a'..'z').to_a

def real_palindrome?(input_string)
	filtered_string = input_string.downcase.chars.select { |char| ALPHANUMERIC.include?(char) }.join
	filtered_string == filtered_string.reverse
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false