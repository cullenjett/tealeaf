#Example of a method that modifies its argument permanently

a = [1,2,3]

def mutuate(array)
	array.pop
end

p "Before mutuate method: #{a}"
p mutuate(a)
p "After mutuate method: #{a}"


b = [10,20,30]

def no_mutate(array)
	array.last
end

p "Before no_mutuate method: #{b}"
p no_mutate(b)
p "After no_mutuate method: #{b}"