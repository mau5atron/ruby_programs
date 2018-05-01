# Dynamic Aspects of Ruby

# Ruby is a dynamic language in the sense that objects and classes may be altered at runtime. 
# Ruby has the capability to construct and evaluate pieces of code in the course of 
# executing the existing statically coded program. It has a sophisticated reflection API
# that makes it more "self-aware"; this enables the easy creation of debuggers, profilers, 
# and similar tools and also makes certain advanced coding techniques possible.

# Coding at runtime

# Code can be constructed peicemeal and evaluated.
# Consider this calculate method and the code calling it.

def calculate(op1, operator, op2)
	string = op1.to_s + operator + op2.to_s

	# operator is assumed to be a string; 
	# make one big string of it and the two operands 
	eval(string) # evaluate and return a value - never use eval ! eval is EVIL lol 
end

@alpha = 25
@beta = 12

puts calculate(2, "+", 2) # Prints 4
puts calculate(5, "*", "@alpha") # Prints 125
puts calculate("@beta", "**", 3) # Prints 1728

# As an even more extreme example, the following code prompts the user for a method 
# name and a single line of code; then it actually defines the method and calls it:

puts "Method name: "
meth_name = gets
puts "Line of code: "
code = gets
string = %[def #{meth_name}\n #{code}\n end] # build a string
eval(string) # define the method
eval(meth_name) # call the Method

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Reflection

# Languages such as Smalltalk, LISP, and Java implement(to varying degrees) the notion of a reflective programming language -- one in 
 # which the active environment can query the objects that define it and extend or modify them at runtime.