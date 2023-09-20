=begin
	
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

On line 9 a method `spin_me` is called and string obejct with the value
`hello world` is passed in as an argument. 

From line 3 - 7 the `spin_me` method is defined with one parameter 
named `str`. On line 4, the `split` method is called, as this is a non-destructive method,
a new array containg two elements `'hello'` and `'world'` is returned. The `each` method is 
then called on the new array with one block parameter named `word`. 

Within the block, on line 5, the `reverse!` method is called on `word`. As `word` is referencing
the newly returned array the `split` method returned, the original array object that `str` is
referencing remains the same.

=end

