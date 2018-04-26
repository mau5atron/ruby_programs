# print is a call to the kernel method 'print' to write standard output
# This leaves the cursor "hanging" at the end of the line
print "Please enter a temperature and scale (C or F):" 


=begin
	flush takes the data stored in a buffer and writes it to standard output to empty the buffer
	you write this after printing to ensure the string gets printed out before 
  a potentially long running situation
=end
STDOUT.flush

# we get a string from standard input and assign it to 'str', chomp! removes the newline character
str = gets.chomp!

# exits the program 'if not str or not str[0]'
exit if str.nil? || str.empty?

# .split splits the string into an array of values, using the space as a delimiter
temp, scale = str.split(" ") #multiple assignment
# example: when entering 34 F, it is split at the space and 
=begin
	puts temp => 34
	puts scale => F
	puts str => 34 F
=end

	
# exits the program with this a regex to check the whether the number is valid
abort "#{temp} is not a valid number." if temp !~ /-?\d+/

# we reassign temp as a floating point number
temp = temp.to_f

case scale
	# when scale is C or c, we use the celsius to fahrenheit equation
when "C", "c"
	f = 1.8*temp + 32
	# when scale is F or f, we use the fahrenheit to celsius equation
when "F", "f"
	c = (5.0/9.0)*(temp-32)
else
	# else if C or F is not entered with Standard input we return an error
	abort "Must specify C or F."
end


if f.nil? # checks if f is not nil, if not nil then print string
	puts "#{c} degress C"
else # else if f is not entered, then select c and print string
	puts "#{f} degress F"
end












