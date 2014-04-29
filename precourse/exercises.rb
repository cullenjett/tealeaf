#exercises

#1
arr = [1,2,3,4,5,6,7,8,9,10]
arr.each {|number| puts number}


#2
arr.each do |number|
	if number > 5
		puts number
	end
end


#3
new_array = arr.select { |x| x % 2 != 0 }

#4
new_array << 11
new_array.unshift(0)

#5
new_array.delete(11) # or new_array.pop
new_array.push(3)

#6
new_array.uniq

#8
opposites = {up: "down", left: "right", short: "tall"}
me = {:name => "Cullen", :age => 25, :eyes => "Blue"}

#9
h = {a:1, b:2, c:3, d:4}
puts h[:b]

h[:e] = 5

h.each do |k, v|
	if v < 3.5
		h.delete(k)
	end
end

#12
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            		["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts['Joe Smith'][:email] = contact_data[0][0]
contacts['Joe Smith'][:address] = contact_data[0][1]
contacts['Joe Smith'][:phone] = contact_data[0][2]

contacts['Sally Johnson'][:email] = contact_data[1][0]
contacts['Sally Johnson'][:address] = contact_data[1][1]
contacts['Sally Johnson'][:phone] = contact_data[1][2]

puts contacts

#13
puts "Joe's email is #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is #{contacts["Sally Johnson"][:phone]}"

#14
fields = [:email, :address, :phone]

counter = 0

contacts.each do |name, hash|
	fields.each do |field|
		hash[field] = contact_data[counter].shift
	end
	counter += 1
end

puts contacts

#15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|string| string.start_with?('s', 'w')}
puts arr

#16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map do |string|
	string.split
end

a.flatten!

p a