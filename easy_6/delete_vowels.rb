=begin
	- write a method that takes an array of strings
	- have the method return an array of the same string values except with
	the vowels removed

EXAMPLES:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
['string']
['string', 'string'] => element, return a new element => chars, select the correct characters



ALGO:
	- define a method that takes an array
	- create a vowels variable
	- iterate over each element of the array, returning a new elements with the correct changes => map
		- use gsub to return the current strings

	SELECT METHOD:
		- define a method that takes an array
		- create a vowels variable 
		- iterate over the input array, return elements with the correct changes
			- split the string into an array of characters, select the characters
			that are not vowels.
			- join the array of characters back into a string
		- return the new array




=end
VOWELS = 'aeiouAEIOU'

def remove_vowels(input_array)
	input_array.map do |string|
		string.chars.select { |char| !VOWELS.include?(char)}.join
	end
end


def remove_vowels(input_array)
	input_array.map {|string| string.gsub(/[aeiouAEIOU]/, '')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


