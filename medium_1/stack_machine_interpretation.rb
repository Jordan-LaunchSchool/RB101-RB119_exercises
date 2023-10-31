=begin
	- write a method that implements a miniature stack and register based program

	register - the current value eg. => 28 * 6 => 168
	stack - eg. 3

	minilang commands:
	n => place a value in the register. Do not modify the stack
	PUSH => push the registered value on the the stack. Leave the value in the register.
	ADD => Pops a value from the stack and adds it to the register
	...
	MULT => pops a value from the stack and multiplies it by the register value, store the integer result in the register.
	...

	PRINT => Print the register value


minilang('PRINT')
0

minilang('5 PUSH 3 MULT PRINT')
15

ALGO:
	- define a method that takes a string of instructions
	- create an empty array called stack
	- register equal to zero

	- split the string into an array of instructions
	- iterate over the array
	- if the current iteration is an integer, register is equal to the current iteration => to_s.to_i == current iteration
	- if the current iteration equals 'PUSH', add the current register value to the stack array
	- if the current iteration equal 'MULT', multiply the register by the last poped value off the stack, save it to the register
	- if the current iteration equals 'PRINT', print the registered value. 

	...

	register = 3
	stack = [5]

=end

def minilang(input_instructions)
	stack = []
	register = 0

	input_instructions.split.each do |instruction|
		case
		when instruction.to_i.to_s == instruction
			register = instruction.to_i
		when instruction == 'ADD'
			register += stack.pop
		when instruction == 'PUSH'
			stack << register.to_i
		when instruction == 'MULT'
			register *= stack.pop
		when instruction == 'SUB'
			register -= stack.pop
		when instruction == 'DIV'
			register /= stack.pop
		when instruction == 'MOD'
			register %= stack.pop
		when instruction == 'POP'
			register = stack.pop
		when instruction == 'PRINT'
			puts register
		end
	end

end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)



