=begin
	- write a method that returns true if the word passed in as
	an argument can be spelled from this set of blocks, otherwise
	return false
	- not case sensitive

	spelling blocks: 
	B:O   X:K   D:Q   C:P   N:A
	G:T   R:E   F:S   J:W   H:U
	V:I   L:Y   Z:M


	block_word?('BATCH') == true
	[B, O], [N, A], [G, T], [H, U]

	block_word?('BUTCH') == false
	[B, O], [H, U], [G, T], [C, P] []

	ALGO:
	- define a method that takes a word
	- create the word blocks array
	
	- iterate over the word blocks
		- if the first and the second
		character downcased are both included in input string
		reteurn false

	- have the method return true

=end

def block_word?(input_string)
	word_blocks = [['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p'],
	['n', 'a'], ['g', 't'], ['r', 'e'], ['f', 's'], ['j', 'w'], ['h', 'u'], ['v', 'i'],
	['l', 'y'], ['z', 'm']]

	word_blocks.each do |block|
		if input_string.downcase.include?(block[0]) && input_string.downcase.include?(block[1])
			return false
		end
	end
	true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true