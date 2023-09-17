=begin
	- write a program that asks the user to enter an integer
	- ask the user if they want to determine the sum or product of all
	numbers between 1 and the entered integer


ALGO:
	- define a prompt method that takes a string
	- have the method output the string with the prompt

	- 
=end

def prompt(msg)
	puts '==> ' + msg.to_s
end

def sum_of_numbers(input_integer)
	(1..input_integer).to_a.sum
end

def product_of_numbers(input_integer)
	(1..input_integer).reduce(:*)
end

prompt("Please enter an integer greater than 0")
input_integer = gets.chomp.to_i

loop do
	prompt("Enter 's' to compute the sum, 'p' to compute the product.")
	answer = gets.chomp.downcase

	case
	when answer == 's'
		prompt(sum_of_numbers(input_integer))
		break
	when answer == 'p'
		prompt(product_of_numbers(input_integer))
		break
	else
		"That is not a valid input"
	end
end