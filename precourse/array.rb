#array

arr = [1,3,5,7,9,11]
number = 3

arr.each do |num|
	if num == number
		puts "#{number} IS in the array!"
	end
end

#---or---

if arr.include?(number)
	puts "WOOHOO, #{number} is in the array!"
else
	puts "Nope, #{number} isn't in there"
end

#---what is returned and what is arr?---

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

#---print the word 'example' from this array---

arr = [["test", "hello", "world"],["example", "mem"]]

puts arr.last.first

#---

string = "Welcome to Tealeaf Academy!"
a = string[6]
b = string[11]
c = string[19]

puts a + " " + b + " " + c

#---

numbers = [1,2,3]
numbers2 = numbers.map { |x| x+2 }

p numbers
p numbers2

#---or---

nums = [2,4,6,8]
new_nums = []

nums.each do |x|
	new_nums << x+2
end

p nums
p new_nums

