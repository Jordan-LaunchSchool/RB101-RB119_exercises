=begin
	- write a method that returns a list of all substrings of a string
	that a palindromic
	- palindromic: each substring must consist of the same sequence of characters forwards,
	as it does backwards
	- The return value should be arranged in the same sequence as the substrings appear in the string
	- duplicate palindromes should be included multiple times
	- use the substring method from the previous exercise
	- single characters are not palindromes
	- palindromes are case sensitive

	EXAMPLES: 
	palindromes('madam') == ['madam', 'ada']
	
	ALGO:
	- find all substrings
	- if the substrings are a palindrome
		add them to a result array
		(palindrome is equal to itself backwards, greater than 1 character in length)
	- return result array
=end

def leading_substrings(input_string)
	input_string.chars.each_index.map do |index|
		input_string[0..index]
	end
end

def substrings(input_string)
	sub_strings = []
	starting_index = 0
	until starting_index == input_string.size
		sub_strings << leading_substrings(input_string[starting_index..-1])
		starting_index += 1
	end
	sub_strings.flatten
end

def palindrome?(input_string)
	input_string.size > 1 && input_string == input_string.reverse
end


def palindromes(input_string)
	substrings(input_string).select do |substring|
		palindrome?(substring)
	end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]