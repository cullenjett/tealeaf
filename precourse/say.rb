#---creating methods---

def say(words = "Hello")
  puts words + "."
end


say()
say( "Howdy" )
say( "How are things" )
say( "DON'T TALK TO ME" )

#---mutating the caller---

def some_method(number)
  number = 7
end

a = 5
some_method(a)
puts a