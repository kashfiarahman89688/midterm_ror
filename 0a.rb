#0a
#a)	In above Ruby Code there is a function called check_squared_sum. 
#This function takes two integers, a and b, and calculates the sum of a and b, then returns the square of the sum.

def check_squared_sum(a,b)

return  "result is #{(a.to_i+b.to_i)*(a.to_i+b.to_i)}"

end

	print "Enter 1st number : "
	first = STDIN.gets
    first.chomp!

    print "\n"

    print "Enter 2nd number : "
	second = STDIN.gets
    second.chomp!

    print "\n"

    puts "#{check_squared_sum(first,second)}"