# 1.5 Training Your Intuitiion: Things to Remember

# 1.5.1 Syntax Issues

# Parenthesis are usually optional with a method call. These calls are all valid: 

=begin
	foobar
	foobar()
	foobar(a, b, c)
	foobar a, b, c	
=end

# Let's try to pass a hash to a method: 

my_method {a: 1,b: 2, 5 => 25} # syntax error 

# Right way, below: 
my_method({a:1, b:2, 5 => 25})

# Now let's suppose that the hash is the only parameter (or the last parameter) to a method. Ruby forgivingly lets us omit the braces: 

my_method(a:1, b:2, 5 => 25)

# Not a method invocation, even though it looks like it.

# There are other cases in which blank spaces are semi-significant.

# For example, these four expressions may all seem to mean the same thing: 

x = y + z
x = y+z
x = y+ z
x = y +z

# the first 3 do mean the same thing. However, in the fourth case, the parser thinks that y is a method call and +z is a parameter
# passed to it. It will then give an error message for that line if there is not method named y. Use blank spaces is a reasonable way.

# Similarly, x = y * z is a multiplication of y and z, whereas x = y *z is an invocation of method y, passing an 
# expansion of array z as a parameter.

# When parsing identifiers, the underscore is considered to be lowercase. Thus, an identifier may start with an underscore, but it will
# not be a constant even if the next letter is uppercase.

# If linear nested-if statements, the keyword elsif is used rather than else if or elif, as in some languages.

# Because of the fact that the question mark may be appended to an identifier, care should be taken with spacing around the ternary
# operator. 

# Example:

# SUPPOSE we have variable called my_flag, which stores either true or false. Then the first line of code show here will be correct,
# but the second will give a syntax error: 

x = my_flag ? 23 : 45 # OK
x = my_flag? 23 : 45 # syntax error

# Programmers coming from other languages usually trip over in using Ruby.

=begin
	- There is no Boolean type such as many languages have. TrueClass and FalseClass are distinct classes.
		and their only instantiations are true and false.
	- Many of Ruby's operators are similar or identical to those in C. Two notable exceptions are the increment and decrement operators
		(++ and --). These are not available in Ruby., neither in "pre" nor "post" forms.
	- The modulus operator is known to work somewhat differently in different languages with respect to negative numbers. 
		The two sides of this argument are beyond the scope of this book; Ruby's behavior is as follows:  	
=end

puts (5 % 3) #prints 2
puts (-5 % 3) # prints 1
puts (5 % -3) # prints -1
puts (-5 % -3) # prints -2

=begin
	- Some may be used to thinking that false value may be represented as a zero, a null string, a null character, or various other things.
		In Ruby, all of these are true, in fact, everything is true except false and nil

	- There are no declarations of variables in Ruby. Although, it is good practice to assign 'nil' to a variable initially.
		It does not truly initialize the variable, but it does inform the parser that this is a variable name rather than a method name.

	- ARGV[0] is truly the first of the command-line parameters, numbering naturally from zero; it is not the file or script name preceding
		the parameters, like argv[0] in C

	- Most of Ruby's operators are really methods; the "punctuation" form of these methods is provided for familiarity and convenience.
		The first exception is the following set:= '..', '...', '!', 'not', '&&', '||', 'or', '!=', '!~'

	- The prefix @@ is used for class variables (which are associated with the class rather than the instance.)

	- loop is not a keyword, it is a kernel method, not a control structure.

	- the 'and-or' have lower precedence than the &&-|| operators. 
=end

a = true 
b = false 
c = true 
d = true

a1 = a && b or c && d # &&'s are done first
a2 = a && (b or c) && d # or is done first

puts a1 # prints false 
puts a2 # prints true
