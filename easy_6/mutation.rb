=begin
	On line 1, the local variable `array1` is initialised and assigned an array of strings.
	On line 2, the local variable `array2` is initialised and assigned an empty array.

	On line 3, the `each` method is called on `array1` with a `{..}` block containg 
	one block parameters named `value` being passed in. Within the block the `<<` method 
	is called on `array2` and the element `value` is referencing is passed in as an argument.
	As this is a destructive method the original object `value` is referencing is returned and 
	passed in.
	
	On line 4, the `each` method is called on `array1` along with a `{..}` block containing one
	block parameter named `value` is passed in. Within the block the `upcase!` method is called
	on `value` followed by an `if` conditional statment that returns `true` if the string
	`value` is referencing starts with `'C'` or `'S'`. As the `upcase!` method is destructive, the
	orginial string object `value` is referencing will be modified and returned if the conditional
	statement returns true. 
	
	Therefore, on line 5, when the `puts` method is called and `array2` is passed in as an
	argunment, the following string values will be output:
	`'Moe'`
	`'Larry'`
	`'CURLY'`
	`'SHEMP'`
	`'Harpo'`
	`'CHICO'`
	`'Groucho'`
	`'Zeppo'`
=end

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2