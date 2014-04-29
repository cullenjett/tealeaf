#conditional_loop.rb

x = 0
while x <= 10
	if x.odd?
		puts x
	end
	x += 1
end

puts ""

y = 0
while y <= 10
	if y % 2 == 0
		puts y
	end
	y += 1
end

puts ""

i = 0
while i <= 10
	if i == 3
		i += 1
    next
  elsif i.odd?
    puts i
  end
  i += 1
end

puts ""

z = 0
while z <=10
	if z == 7
    break
  elsif z.odd?
    puts z
  end
  z += 1
end

