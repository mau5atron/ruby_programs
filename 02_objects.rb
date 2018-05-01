# In ruby, all numbers, strings, arrays, regular expressions, and many other entities are actually objects. Work is done by 
# executing the methods belonging to the object

# Examples: 

3.succ # => 4 - returns the next ascii character value - in this case the next value is 4

"abc".upcase # => "ABC"

%w[2 1 5 3 4].sort # => [1, 2, 3, 4, 5]

# some_object.some_method # some_result

# In Ruby, every object is an instance of some class; the class contains the implementation of the methods:

"abc".class # => String

"abc".class.class # Class

# In addition to encapsulating its own attributes and operations, an object in Ruby has an identity: 

"abc".object_id # => 53744407

# To create an object from an existing class, the new method is typically used: 

myFile = File.new("textfile.txt", "w")
myString = String.new("This is a string object")

# No need to use 'new' when using object literals. 

your_string = "This is also a string object"
number = 5 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Fixnum, are copied directly into the variables that refer to them. (These objects are no bigger than pointers, and it is 
# more efficient to deal with them in this way ) In this case, assignment makes a copy of the object, and the heap is not used.

# Variable assignemnt causes object references to be shared.

y = "abc"

x = y
x # => "abc"

# After x = y is executed, variables x and y both refer to the same object: 

y.object_id # => 53732208
x.object_id # => 53732208

# If the object is mutable, a modification done to one variable will be reflected in the other: 

x.gsub!(/a/, "x")
y # => "xbc"

# Reassigning one of these variables has no effect on the other:

# Continuing from previous: 

x = "abc"
y # => "xbc"

# A mutable object can be made immutable using the 'freeze' method: 

x.freeze
x.gsub!(/b/, "y") # => Error! => can't modify frozen String

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Symbols

# A symbol acts like a kind of immutable string, and multiple uses of a symbol all reference the same value. A symbol can be converted to a string with 
# the to_s method: 

suits = [:hearts, :clubs, :diamonds, :spades]
lead = suits[1].to_s # => "clubs"

# Similar to arrays of strings, arrays if symbols can be created using the syntax shortcut %i:

suits = %i[hearts clubs diamonds spades] # an array of symbols
