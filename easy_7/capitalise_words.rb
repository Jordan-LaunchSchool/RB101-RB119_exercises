=begin
	- write a method that takes a string
	- have the method return a new string that contains the original value
	of the argument with the first characters of every word capitalised and all other letters lowercase
	- assume that words are any sequence of non-blank characters

EXAMPLES:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

ALGO:
- define a method that takes a string
- split the string into an array of words
- iterate over each word, 
	- return a capitalise it
- return the array of words with desired changes
- join to the array back together with a space


=end

def word_cap(input_string)
	input_string.split.map { |word| word.capitalize }.join(" ")
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'