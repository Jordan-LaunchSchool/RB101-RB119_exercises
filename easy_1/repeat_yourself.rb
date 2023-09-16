=begin
	- write a method that takes two arguments
	- the first arg is a string, the second arg is an integer
	- print the string to the terminal input integer amount of times	

=end

def repeat(input_string, input_integer)
	input_integer.times do 
		puts input_string
	end
end

repeat('Hello', 3)