#more_stuff

words = ["laboratory",
		     "experiment",
         "Pans Labyrinth",
         "elaborate",
         "polar bear"]

words.each do |word|
  if word =~ /lab/
    puts word
  end
end

#---or---

def check_in(word)
  if /lab/i =~ word # adding 'i' to the REGEX expression makes it case insensitive
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")

