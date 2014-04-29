#countdown.rb

puts "Enter a number, and I'll count it down to 0:"
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done!"

#---do/while version---

puts "Number please"
n = gets.chomp.to_i

begin
  puts n
  n -= 1
end while n >= 0

puts "DONE!"

#---for loop version---

puts "You know the drill..."
y = gets.chomp.to_i

for i in 1..y do
  puts y
  y -= 1
end

puts "Done again"

#---for loop through array---

a = [1,2,3]

for i in a do
  puts i
end

puts "Totally and completely done"