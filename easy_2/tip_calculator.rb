=begin
	- prompt the user for a bill and tip amount
	- have the program compute the tip and then display both the tip 
	and the total amount of the bill

PROMPTS:

What is the bill?
What is the tip percentage? 

(200 / 100 * 15)


The tip is
The total is
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip_amount = bill / 100 * tip_percentage

puts "The tip is #{tip_amount}"
puts "The total is #{bill + tip_amount}"