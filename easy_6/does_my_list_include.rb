=begin
	input: 2 arguments, array and integer (search value)
	output: boolean

	- write a method that takes an array and a search integer
	- have the method search for the search value within the array
	- have the method return a boolean on the condition of the search
	integer being contained within the input array
	- you cannot use the include method in the solution

	EXAMPLES: 
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

ALGO:
	- define a method that takes two arguments, input array and search integer
	- iterate over the input array
	- if the current iteration is equal to the search integer
		- return true
	- otherwise return false

=end

def include?(input_array, search_value)
	input_array.each do |element|
		return true if element == search_value
	end
	false
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false