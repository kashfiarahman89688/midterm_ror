class My
def method1
  x = 11
  method2 do |x|
  	puts x
end
end 

def method2
  x = 22
	yield 33 
	end 


def method3
  x = 11
  method2 do |y|
  puts x
end  
end
m1 = My.new()
m1.method3
end