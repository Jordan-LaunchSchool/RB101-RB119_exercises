=begin
	- number of lights => 1 to `n`
	- all switches start off
	- on the first pass you toggle every switch on
	- start again from start, second pass you toggle switch 2, 4, 6
	- on the third pass you turn turn switched 3, 6, 9 and so on until you have completed `n` repitions

	EXAMPLES:
	n = 5
	round 1: [on, on, on, on, on]
	round 2: [on, off, on, off, on]
	round 3: [on, off, off, off, on]
	round 4: [on, off, off, on, on]
	round 5: [on, off, off, on, off]

	ALGO:
	- define a method that take an integer named number of lights
	- create a hash with with with keys named one to number of lights with their value set to false
		- create a empty lights hash
		- begin a loop from 1 upto input number of lights
			- use the block parameter as the key and set the value to false
		- return the lights hash

	- start a counter set to 1
	- begin a loop that run from 1 upto the number of lights
		- iterate over the hash, if the current key is divisible by the counter
			- set the value to the opposite of itself
			- add + 1 to the counter


	- create a lights on empty array
	- iterate over the values with index
		- if the current index is true
			add the current index + 1 to the result array
		- return the result array
=end

def initalise_lights(number_of_lights)
	lights = {}
	1.upto(number_of_lights) do |counter|
		lights[counter] = false
	end
	lights
end

def lights_on(number_of_lights)
	lights = initalise_lights(number_of_lights)

	
	1.upto(number_of_lights) do |counter|
		lights.each do |light, value|
			lights[light] = !value if light % counter == 0
		end
	end
	
	lights.select {|_light_position, status| status}.keys
end

p lights_on(10)