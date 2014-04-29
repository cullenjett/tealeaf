#flow_control.rb

#return capitalized verion of string input if its length > 10
def cap(word)
	word.length() > 10 ? word.upcase() : word end

puts cap("Joe B")
puts cap("Joe Brownstone")


def eval_number(num)
  if num < 50
    puts "Your number is less than 50"
  elsif num == 50
    puts "You chose 50, kaboom!"
  elsif num < 100
    puts "Your number is more than 50, but less than 100"
  else 
    puts "Your number is greater than 100!"
  end
end

def eval_case_number(num)
  case num
  when num < 0
    puts "NO NEGATIVES!"
  when 0..50
    puts "#{num} is between 0 and 50"
  when 51..100
    puts "#{num} is between 51 and 100"
  else
    puts "You chose something bigger than 100 :("
  end
end


puts "Give me a number, sucka!"
number = gets.chomp.to_i

eval_number(number)
eval_case_number(number) 




