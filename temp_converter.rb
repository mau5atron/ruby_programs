# print is a call to the kernel method 'print' to write standard output
# This leaves the cursor "hanging" at the end of the line
print "Please enter a temperature and scale (C or F):" 

# .flush takes the data stored in a buffer and writes it to standard output to empty the buffer
STDOUT.flush

str = gets

exit if str.nil? || str.empty?

str.chomp!

temp, scale = str.split(" ")

abort "#{temp} is not a valid number." if temp !~ /-?\d+/

temp = temp.to_f

case scale
when "C", "c"
	f = 1.8*temp + 32
when "F", "f"
	c = (5.0/9.0)*(temp-32)
else
	abort "Must specify C or F."
end

if f.nil?
	puts "#{c} degress C"
else
	puts "#{f} degress F"
end
