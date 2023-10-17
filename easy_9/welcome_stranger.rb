=begin
	- write a method that takes two arguments, an array and a hash
	- the array will contain two or more elements
	- the hash will contain two keys, :title and :occupation, and the appropriate values
	- your method should return a greeting that uses the persons full name and mentions
	thir title and occupation


=end

def greetings(full_name, details)
	puts "Hello, #{full_name.join(" ")}! Nice to have a #{details[:title]} #{details[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
