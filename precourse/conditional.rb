puts "put in a number"
a = gets.chomp.to_i

if a == 3
	puts "a is three!"
elsif a == 4
  puts "a is four!"
else
  puts "I don't know what a is..."
end

x = 3
if x == 3 then puts "but/and x is three!!" end

puts "x is still three..." if x == 3

puts "but now, x is NOT three, muahaha" unless x == 4