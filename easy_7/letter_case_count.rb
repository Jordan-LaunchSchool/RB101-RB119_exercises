=begin
	- write a method that takes a string
	- have the method return a hash that contains 3 entries: lowercase, uppercase, neither

EXAMPLES:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

ALGO:
	- define lower case letters variable
	- define uppercase letters variable

	- define a method that that takes a string
	- create a hash with the 3 keys and values as zero
	- iterate over the characters of the input string
		- if the character is included in the lowercase array
			- + 1 to lowercase key
			.....

	- return the result hash
=end

LOWER_CASE_ALPHA = ('a'..'z').to_a
UPPER_CASE_ALPHA = ('A'..'Z').to_a

def letter_case_count(input_string)
	result = { lowercase: 0, uppercase: 0, neither: 0 }
	input_string.each_char do |char|
		if LOWER_CASE_ALPHA.include?(char)
			result[:lowercase] += 1
		elsif UPPER_CASE_ALPHA.include?(char)
			result[:uppercase] += 1
		else
			result[:neither] += 1
		end
	end
	result
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }