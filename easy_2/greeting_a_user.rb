=begin
	- write a program that asks for the users name
	- have the program greet the user,
	- if the user write name!, have the name return
		in capitals and ask why the user is screaming?


ALGO:
	- prompt the user for their name
	- if the last character of the input is an 
		explanation mark, return the greeting in capitals
		and add WHY ARE WE SCREAMING?


=end

puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
	puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
	puts "Hello #{name}."
end