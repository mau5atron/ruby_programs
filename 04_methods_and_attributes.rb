# Methods and Attributes

# Methods are typically used with with simple class instances and varibles by separating the receiver from the method with a period
# (receiver.method). In the case of method names that are punctuation, the period is omitted.
# Methods can take arguments.

Time.mktime(2014, "Aug", 24, 16, 0)

# Because every expression returns a value, method calls may typically be chained or stacked.

3.succ.to_s

/(x.z).*?(x.z)/.match("x1z_1a3_x2z_1b3").to_a[1..3]

# 3+2.succ

receiver.method(arg1, *more_args)

# In this case, the method treats more_args as an array that it deals with as it would ant other array. In fact, an ASTERISK in 
# in the list of formal parameters (on the last or only parameter) can likewise "collapse" a sequence of actual parameters into an array: 

def mymethod(a, b, *c)
	print a, b 
	c.each do |x| print x end 
end

mymethod(1, 2, 3, 4, 5, 6, 7) # => a=1, b=2, c=[3, 4, 5, 6, 7]

# Ruby also supports named parameters, which are called keyword arguments in the Python realm; the concept 
# dates back at least as far as the Ada language developed in the 1960's and 70's. 
# Named parameters simultaneously set default values and follow arguments to be given in any order because they are explicitely labeled:

def my_method(name: "default", options: {})
	options.merge!(name: name)
	some_action_with(options)
end

# When a named parameter has its default omitted in the method definiton, it is a required named parameter:

def other_method(name:, age:)
	puts "Person #{name} is aged #{age}."
	# It's an error to call this method without specifying 
	# values for name and age
end
# use this method as so 
method(name: "Gabriel", age: 22)


# Ruby has the capability to define methods on a per-object basis(rather than per class)
# Such methods are called singletons=, and they belong solely to that object and have no effect on its class or superclasses. 

# An example, you can define a button action for a widget by defining a singleton method for the button object.

str = "Hello, world!"
str2 = "Goodbye!"

def str.spell
	self.split(/./).join("-")
end

str.spell # => "H-e-l-l-o-,- -w-o-r-l-d-!"
str2.spell # => error!
