#loops_iterators

x = ""

while x != "STOP"
	puts "You wanna rock??"
	ans = gets.chomp
	puts "Again?"
	x = gets.chomp
end


#---each_with_index---

gross = ['boogers',
			   'doo-doo',
			   'snakes',
			   'Mondays' ]

gross.each_with_index do |thing, index|
  puts "#{index+1}: #{thing}"
end

#---count down to zero using recursion---

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(0)
