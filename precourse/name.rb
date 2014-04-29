puts "What's your name, fool?"
name = gets.chomp
puts "Word, #{name}, stay fresh!"

#print that name 10 times

10.times {puts name}

#getting multiple inputs from user

print "Give me your first name: "
first_name = gets.chomp
print "Now your last:"
last_name = gets.chomp
puts "#{first_name} #{last_name}? Whatever!"