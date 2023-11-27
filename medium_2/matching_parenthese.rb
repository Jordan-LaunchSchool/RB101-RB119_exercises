=begin
	- write a methdo that takes a string
	- have the method return true if all parenthese in the string
	are properly balanced
	- otherwise return false
	- must occur in matching '('  ')' pairs

	EXAMPLES:
	balanced?('What (is) this?') == true
	'(' ')' => true
	')' => false
	'(' == 2, ')' == 2 for this to return => true
	must be the same amount of close brackets as open brackets
	always needs to being with an open bracket

	balanced?('What s((i))) up(') == false
	counter always needs to be 0 or greater, cant ever be less than zero

	ALGO:
	- define a method that takes a string
	- create a counter variable equal to zero
	- iterate over the input strings characers,
		- break if the counter is ever less than 0
		- if the current iteration is equal to '(', add + 1 to the counter
		- if the current iteration is eqaul to ')', -1 from the counter
		
	- return true if counter equal zero otherwise false
=end

def balanced?(input_string)
	counter = 0
	input_string.each_char do |char|
		counter += 1 if char == '('
		counter -= 1 if char == ')'
		return false if counter < 0
	end

	counter == 0
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false