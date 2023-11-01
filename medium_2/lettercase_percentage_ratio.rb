=begin
	- write a method that takes a string
	- have the method return a string
	that contains 3 entries
	- one represents the percentage of characters in the string
	that are lowercase, one upper case and neither.
	- the string will always contain at least 1 characters

EXAMPLES:

letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

ALGO:
	- create a lower case alpha constant
	- create an uppercase alpha constant

	- define a method that takes a string
	- create a character_counter variable
	- create a lower case count variable (set as floats 0.0)
		.. uppercase variable
		... neither varialbe
	- iterate over the input strings characters
		- if current iteratation is included in uppercase, lowercase or neither
			- add + 1 to the correct variable

	- create a result hash, have the key as lowercase and value as character_counter / lcc * 100
	...

	- return the hash

=end

LOWER_ALPHA = ('a'..'z').to_a
UPPER_ALPHA = ('A'..'Z').to_a



def letter_percentages(input_string)
	character_counter = input_string.size
	lower_case_count = 0.0
	upper_case_count = 0.0
	neither_case_count = 0.0

	input_string.each_char do |char|
		case
		when LOWER_ALPHA.include?(char)
			lower_case_count += 1
		when UPPER_ALPHA.include?(char)
			upper_case_count += 1
		else
			neither_case_count += 1
		end
	end

	result = {lowercase: (lower_case_count / character_counter) * 100,
	uppercase: (upper_case_count / character_counter) * 100,
	neither: (neither_case_count / character_counter) * 100
}

end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }