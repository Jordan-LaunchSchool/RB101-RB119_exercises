=begin
	- wrute a method that takes a string
	- have the method return true if all characters inside the
	string are uppercase otherwise return false
	- characters that are not alphabetic should be ignored

EXAMPLES:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true

uppercase?('') == true

if it includes any lowers letters return false

ALGO:
	- create a lowers case aphabet array
	- define a method that takes a string
	- iterate over the input string
		- reutrn false if any of the characters are included in the lower
		case alphabet array

	- otherwise, return true

=end

LOWER_CASE_ALPHABET = ('a'..'z').to_a

def uppercase?(input_string)
	input_string.each_char {|char| return false if LOWER_CASE_ALPHABET.include?(char)}
	true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true