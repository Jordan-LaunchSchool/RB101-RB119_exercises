=begin
	- write a method which takes a grocery list of fruits with quantities and converts it into an array of the correct
	number of each fruit


	ALGO:
	- write a method that takes a nested array,
	- iterate over the input_array with map
		- return the first element multiplied by the second element
	- return the new array

=end

def buy_fruit(input_array)
	input_array.map { |sub_array| [sub_array[0]] * sub_array[1] }.flatten
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]