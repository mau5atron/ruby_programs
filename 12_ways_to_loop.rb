list = %w[alpha bravo charlie delta echo] # array list we will be printing out with loops
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# loop 1 (while)

i = 0

while i < list.size do 
	print "#{list[i]} "
 	i += 1
end

# OR 
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# loop 2 (until)

i = 0
until i == list.size do 
	print "#{list[i]} "
	i += 1
end


# OR 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# loop 3 (post-test while) // not recommended

i = 0

begin 
	print "#{list[i]} "
	i += 1
end while i < list.size

# OR 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# loop 4 (post-test until) // not recommended

i = 0
begin 
	print "#{list[i]} "
	i += 1
end until i == list.size

# OR 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# loop 5 (for) // proper way to loop

for x in list do 
	print "#{x} "
end

# OR 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# loop 6 ('each' iterator) // proper way to loop

list.each do |x|
	print "#{x} "
end

# OR 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# loop 7 ('loop' method) // loop is not a control structure - method of module kernel

i = 0
n=list.size-1
# n == 4, there are 5 items in array but we start from 0 index
# loop until we hit hit over n == 4
loop do 
	print "#{list[i]} "
	i += 1
	break if i > n
end

# OR 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# loop 8('loop' method) // loop is not a control structure - method of module kernel

i = 0

n=list.size-1

loop do 
	print "#{list[i]} "
	i += 1
	break unless i <= n
end

# OR

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# loop 9 ('times' iterator)

n=list.size 
 
n.times do |i|
	print "#{list[i]} "
end

# OR 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# loop 10 ('upto' iterator)

n = list.size-1
0.upto(n) do |i|
	print "#{list[i]} "
end

# OR

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# loop 11 (for)

n = list.size-1

for i in 0..n do 
	print "#{list[i]} "
end

# OR 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# loop 12 ('each_index' iterator)

list.each_index do |x|
	print "#{list[x]} "
end











