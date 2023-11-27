=begin
	- write a method that takes two string
	- have the method return true if the there is a comming substring that appears in both
	- the sub string must be greater than one character
	- otherwise have the method return false
	- case does not matter

	p substring_test('Something', 'Fun') == false
	p substring_test('Something', 'Home') == true
	['s', 'o'] => [0, 1] => ['o', 's']
	S O M E T H I N G
	0 1 2 3 4 5 6 7 8 

	p substring_test('Something', '') == false
	p substring_test('', 'Something') == false
	p substring_test('BANANA', 'banana') == true
	p substring_test('test', 'lllt') == false
	p substring_test('', '') == false
	p substring_test('1234567', '541265') == true
	p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true

	ALGO:
	- define a method that takes two strings
	- return false if either strings are empty
	- downcase both strings
	
	- begin an upto loop from 0 - string size minus 2
		- slice from index with 2 characters from the first string
			- if the second string includes the sliced characters from string 1, return true


	- return false
=end

def substring_test(string_1, string_2)
	return false if string_1.empty? || string_2.empty?

	string_1_downcase = string_1.downcase
	string_2_downcase = string_2.downcase

	0.upto(string_1.size - 2) do |index|
		sub_string = string_1_downcase[index, 2]
		return true if string_2_downcase.include?(sub_string)
	end

	false
end

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true