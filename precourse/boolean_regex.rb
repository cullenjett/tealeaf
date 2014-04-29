#boolean_regex

def has_a_b?(string)
	if string =~ /b/
		puts "We have a match! #{string} has a B."
	else
		puts "Nope, no B's in #{string}"
	end
end

has_a_b?('basketball')
has_a_b?('cullen')