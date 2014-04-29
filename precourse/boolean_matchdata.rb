#boolean_matchdata

def has_a_g(string)
	if /g/.match(string)
		puts "#{string} has a g"
	else
		puts "No g's in #{string}"
	end
end

has_a_g('golf')
has_a_g('cullen')
