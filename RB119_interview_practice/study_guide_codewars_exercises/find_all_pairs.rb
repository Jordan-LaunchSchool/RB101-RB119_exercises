=begin
	- write a method that takes an array of integers
	- have the method return the count of the number of pairs within 
	the input array
	- if the there are 2 pairs eg. [0, 0, 0, 0] the return value is 2
	- if the array is empty or only has one value return 0

	EXMAPLES:
	pairs([1, 2, 5, 6, 5, 2]) == 2
	what is the condition that needs to be met?
	- there must be atleast 2 of the number
	- the count must be divisbile by 2
	- add the count divided by 2 to a pair counter
	- ?uniq to only iterate over the number once

	ALGO:
	- define a method that takes an array of integers
	- create an empty numbers that appear more than once

	FIND THE PAIRS WITHIN THE INPUT ARRAY
		- iterare over a uniq copy of the input array
		- if the current number has a count of more than 1 in the input array
			- add the count * by the current number to the pair array

	RETURN THE PAIRS COUNTER
	- divide the the size of the pairs array by 2, returning the number of pairs

=end

def pairs(input_array)
	multiple_integers_array = []
	input_array.uniq.each do |number|
		if input_array.count(number) > 1
			multiple_integers_array << [number] * input_array.count(number)
		end
	end
	multiple_integers_array.flatten.size / 2
end



p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0