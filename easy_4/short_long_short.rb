=begin
	- write a method thats two strings as arugments
	- have the method determine the longer of the two strings
	- have the method return a string made up of the shorter string, the longers string
	and then the shorter string again with no spaces

EXAMPLES:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

ALGO:
	- define a method that takes 2 strings
	- create a result array
	- put both strings as seperate elements in the result array
	- sort the result array by string size
	- add the first element to the end of the array
	- join the array as a string with no space

=end

def short_long_short(string_1, string_2)
	result = [string_1, string_2].sort_by {|string| string.size}
	result << result[0]
	result.join
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"