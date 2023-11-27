=begin
	- write a method that takes an array
	- have the method sort and return the original array

	EXAMPLES:
	array = [6, 2, 7, 1, 4]
	6 > 2? => yes
	array[0], array[1] = array[1], array[0]
	0 + (0 + 1)
	1 + (1 + 1)

	0 upto 4 to use index
	if the index being referenced equal nil, break to the next iteration



	bubble_sort!(array)
	array == [1, 2, 4, 6, 7]

	ALGO:
		- define a method that takes an array


			- begin a loop
				- create a variable called swap detected equal to false
				- within the loop, begin a loop from 0, to the array size minus one
				and use the block parameter to access index of the input array
				- break the loop if the index + 1 equal `nil`
				- if the current index is larger than the next index
					- swap current index with the next index
					- change the swap deteced variable to true

			- break the loop if the swap detected variable is equal to false

		- return the input array	



=end

def bubble_sort!(input_array)

	loop do
		swap_detected = false
		0.upto(input_array.size - 1) do |index|
		break if input_array[index + 1] == nil
			if input_array[index] > input_array[index + 1]
				input_array[index], input_array[index + 1] = input_array[index + 1], input_array[index]
				swap_detected = true
			end
		end
		break if swap_detected == false
	end
	input_array
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)