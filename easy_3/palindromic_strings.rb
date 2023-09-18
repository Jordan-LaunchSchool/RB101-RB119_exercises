=begin
	- write a method that takes a string
	- have the method return true if the string
	passed in is a palindrome
	- palindrome reads the same forwards as backwards
	- case matters

EXAMPLES:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

ALGO:


=end

def palindrome?(input_string)
	input_string == input_string.reverse
end



p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true