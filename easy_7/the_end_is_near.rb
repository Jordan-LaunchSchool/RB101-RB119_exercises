=begin
	- write a method that returns next to last word in the string passed to it

=end

def penultimate(input_string)
	input_string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'