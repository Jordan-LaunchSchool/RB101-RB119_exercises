=begin
	- write a method that counts the number of occurences
	- the words are case sensitive


ALGO:
		- define a method that takes an array
		- create an empty result hash
		- iterate over the array
			- if the current iteration is a key in the
				the result array skip to the next iteration
			- otherwise, add the current iteration as a key
			and the count of within the input array as the value

		- print the result hash
=end

def count_occurrences(input_array)
	result = {}
	input_array.each do |element|
		result.has_key?(element) ? next : result[element] = input_array.count(element)
	end
	result.each do |key, value|
		puts "#{key} => #{value}"
	end
end



vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]



count_occurrences(vehicles)
