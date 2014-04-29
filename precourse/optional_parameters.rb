#optional_parameters

def greeting(name, options = {})
	if options.empty?
		puts "Hi, my name is #{name}"
	else
		puts "Hi, my name is #{name} and I am #{options[:age]}" +
		" years old and I live in #{options[:city]}."
	end
end

greeting('Bob')
greeting('Cullen', {age: 25, city: "Denver"})
greeting("Jesus", age: "1 billion", city: "Heaven")