=begin
	Many built-in methods are available from class ancestors. Of special note are the kernel 	methods mixed-in to the object class; because object is the
	universal parent class, the methods added to it from kernel are also universally available. These methods form an important part of Ruby.
=end

# Module = collection of methods and constants that is external to the Ruby program
# Common use of a module is to have its features "mixed" into a class (by using include)
# A ruby module is an OOP abstraction similar to a class.

# To define a new class use the following construct: 

class ClassName
	#
end

# The name of the class itself is a global constant and therefore must begin with an uppercase letter. The class definition can contain class constants, 
# class variables, class methods, instance variables, and instance methods. Class-level information is available to all objects of the class, whereas 
# instance-level information is available to the one object.

class Friend
	@@myname = "Fred" # a class variable

	def initialize(name, gender, phone)
		@name, @sex, @phone, = name, gender, phone
		# These are instance variables
	end

	def hello #an instance method
		puts "hi, I'm #{@name}"
	end

	def Friend.our_common_friend # a class method
		puts "We are all friends of #{@@myname}"
	end
end
	f1 = Friend.new("Susan", "female", "555-0123")
	f2 = Friend.new("Tom", "male", "555-4567")

	f1.hello # => "Hi, I'm Susan"
	f2.hello # => "Hi, I'm Tom"
Friend.our_common_friend # we are all friends of Fred.

# Because class-level data is accessible throughout the class, it can be initialized at the time the class is defined. 

# If an instance method name initialized is defined, it is guaranteed to be executed right after an instance is allocated. The initialize method is 
# similar to the traditional concept of a constructor, but it does not have to handle memory allocation. 
# Allocation is handled by 'new', and deallocation is handled transparently by the garbage collector.

# NOW consider this fragment, and pay attention to the getmyvar, setmyvar, and myvar=methods

class MyClass
	NAME = "Class Name" # class constant
	@@count = 0 # initialize a class variable

	def initialize #called when object is allocated 
		@@count += 1
		@myvar = 10
	end

	def self.getcount # class method
		@@count
	end

	def getcount # instance returns class variable!
		@@count #class variable
	end

	def getmyvar
		@myvar
	end

	def setmyvar
		@myvar
	end

	def setmyvar(val) #instance method sets @myvar
		@myvar = val
	end

	def myvar=(val) # another way to set @myvar
		@myvar = val
	end
end

foo.MyClass.new # @myvar is 10
foo.setmyvar # @myvar is 20
foo.myvar = 30 # @myvar is 30

# Class variables are shared between the class itself and every instance of the class.

# Variables that belong only to the class, use instance variables inside of a class method.
# Class instance variables are prefered over class variables as they are not shared amongst instances.

# attr_reader and attr_writer create read-only and write-only versions of an attribute. respectively 

# There are also modifying methods 'private', 'protected', and 'public' that can be used to control the 
# visibility of methods in a class.

# Instance variables are always privste and inacessible from outside the class, except by means of accessors.

# Each of these modifiers takes a symbol like :foo as a paramte; if this is ommitted, the modifier applies to all subsequent
# definitions in the class.
# Example: 

class MyClass
	def method1
		#
	end

	def method2
		# 
	end

	def method3
		# 
	end

	private :method1
	public :method2
	protected :method3

	private 

	def my_method
		# 
	end

	def another_method
		# 
	end
end

# In the protecting class, method1 will be private, method2 will be public, and method3 will be protected.
# Because of the private method with no parameters, both my_method and another_method will be private.

# Public:
# The public access is self-explanatory; there are no restrictions on access or visibility.

# Private: 
# The private level means that the method is accessible only within the class or its subclasses, and it is callable only in "function form"




