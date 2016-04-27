#0b
#b)	The second method you have to fill in is sort_array_plus_one. This method takes in an array of integers, sorts it,
#then increments every element by 1, and returns it. It does not matter if this method is destructive or not.

def sort_array_plus_one(array)

	array.sort! {|x, y| x <=> y}
	puts "Input array :"
	print array
	print "\n"
	puts "Result :"
	for i in array do 
		print i.to_i+1
		print ", "

	end

end

data = [3, 5, 4, 7, 8, 6, 2, 9, 2]
sort_array_plus_one(data)

