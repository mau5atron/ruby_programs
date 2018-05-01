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

 # Ruby allows reflection quite extensively but does not go as far as Smalltalk, which even 
 # represents control structures as objects. Ruby control structures and blocks are not objects. 

# (A Proc object can be used to "objectify" a block, but control structures are never objects)

# The keyword 'defined?' (with the question mark) may be used to determine whether an identifier name is in use.

if defined? some_var
	puts "some_var = #{some_var}"
else
	puts "The variable some_var is not known."
end

# Similarly, the method respond_to? determines whether an object can respond to the specified method call 
# (that is, whether that method is defined for that object)
# The respond_to? method is defined in class Object

# Ruby supports runtime-type information in a radical way. The Type (or class) of an object can be determined at 
# runtime using the method class (defined in Object). 

# Similarly, 'is_a?' tells whether an object is of a certain class (including the superclasses);

# 'kind_of?' is an alias. Example:

puts "abc".class # Prints string
puts 345.class # Prints Fixnum
rover = Dog.new 

print rover.class # Prints Dog

if rover.is_a? Dog
	puts "Of course he is."
end

if rover.kind_of? Dog
	puts "Yes, still a dog"
end

if rover.is_a? Animal
	puts "Yes, he is an animal, too."
end

# The class module has a method called 'constants' that is used to list the constants defined within a module.

# The class Module has a method called 'ancestors' that returns a list of modules included in the given module. 
# This list is self-inclusive; 'Mod.ancestors' will always have at least Mod in the list.
# This list comprises not only parent clsses (through inheritance) but "parent" modules (through module inclusion)

# The class 'BasicObject' has a method called superclass that returns the superclass of the object or returns nil. 
# Because BasicObject itself is the only object without a superclass, it is the only case in which nil will be returned.


# The ObjectSpace module is used to access any all "living" obejcts. The method. '_idtoref' can be used to convert an 
# object ID to any object reference. 
# It can be considered the inverse of the object_id method. 

# ObjectSpace also has an iterator called each_object that iterates over the objects currently in existence, including 
# many that you will not otherwise explicitly know about. 
# (Remember that certain small immutable objects, such as objects of class Fixnum, NilClass, TrueClass, and FalseClass, 
# are not kept on the stack for optimization reasons.)





