=begin
	- write a method that takes a first name, a space and a last name
	- have the method return a string that contains the last name, a space and the first name

	last, first

=end

def swap_name(input_string)
	input_string.split.reverse.join(", ")
end


p swap_name('Joe Roberts') == 'Roberts, Joe'