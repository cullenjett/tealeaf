#---Exercises for the Methods chapter---

def greeting(name)
  p "Why hello, #{name}, what's new?"
end

greeting("Cullen")


x = 2

puts x = 2

p name = "Joe"

four = "four"

print something = "nothing"


def multiply(x,y)
  x*y
end

puts multiply(2,3)

#doesn't work
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yipee")

#does work
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yipee")
