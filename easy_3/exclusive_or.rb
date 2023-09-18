=begin
	-


	|| 
true || true => true
true || false => true
false || false => false

&&
true && true => true
true && false => false
false && false => false

exclusive_or?
true xor? true => false
false xor? false => false

ALGO:
	- define a method that takes two argument
	- return true if only one of the inputs is true, otherwise return false
		- if arg1 is false and arg2 is true return true
		- if arg1 is true and arg2 is false return true
			otherwise return false

=end

def xor?(arg1, arg2)
	return false if arg1 && arg2 
	return false if !arg1 && !arg2
	true
end


p xor?(5.even?, 4.even?) == true 
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false 
p xor?(5.even?, 4.odd?) == false