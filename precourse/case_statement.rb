#case_statement.rb

a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "I don't know what a is..."
end

#save result of case statement to a variable

a = 5

answer = case a #or you could do answer = case
when 5
  "a is 5"
when 6
  "a is 6"
else
  "I don't know what a is..."
end

puts answer