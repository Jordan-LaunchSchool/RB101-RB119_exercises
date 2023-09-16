=begin
	- write a method that takes a short line of text
	- have the method print the text within a box

EXAMPLES:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

RULES:
	- always 5 lines
	- top and bottom pattern is always '+', '-', '-', '+'
	- second and fourth lines always '|', ' ', ' ', |
	- text line starts with '|' and has 1 space padding on each side, ends with '|'

ALGO:
	- define a method that takes a string
	- create a multiplier that is equal to the string size, if string size
	is empty have the multiplier equal to 2
	- output the first line, have the '-' times the multiplier
	- sencond line "					"
	- text line, output start line, followed by a space, text, space and the final line

=end

def print_in_box(input_string)
	multiplier = input_string.empty? ? 2 : (input_string.size + 2)
	puts "+#{'-' * multiplier}+"
	puts "|#{' ' * multiplier}|"
	puts "| #{input_string} |"
	puts "|#{' ' * multiplier}|"
	puts "+#{'-' * multiplier}+"
end



print_in_box('')
print_in_box('To boldly go where no one has gone before.')