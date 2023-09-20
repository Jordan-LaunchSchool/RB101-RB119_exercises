=begin
	- write a method that tales a string
	- have the method method return a new string that contains
	the value of the original string but with all consecutive duplicates
	character collapsed into a single character
	- cannot use #squeeze methods

EXAMPLES:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

ALGO:
	- write a method that takes a string
	- create a result string
	- iterate over the input strings characters
		- if the last character includes the current character
			next iteration, otherwise add the current chharacter to
			the result string
	
	- return the result string
=end

def crunch(input_string)
  result = ''
  input_string.each_char do |char|
    result[-1] == char ? next : result << char
  end
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''