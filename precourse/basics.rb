#---string concatenation and interpolation---

firstname = "Cullen"
lastname = "Jett"

puts firstname + lastname
puts firstname + " " + lastname
puts "My name is #{firstname} #{lastname}"


#---division/modulus operation---

#the goal is to extract the number in the thousandths, hundredths, tens, and ones place for the number 4936
#
#thousandths
puts 4936 / 1000

#hundredths
puts 4936 % 1000 / 100

#tens
puts 4936 % 1000 % 100 / 10

#ones
puts 4936 % 1000 % 100 % 10


#---hash---

movies = { jaws: 1975,
  anchorman: 2004,
  man_of_steel: 2013,
  a_beautiful_mind: 2001,
  the_evil_dead: 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]

#---array---

dates = [movies[:jaws], movies[:anchorman],movies[:a_beautiful_mind],movies[:the_evil_dead]]
puts dates[0..3]

#---factorial---

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

#---exponentials---

a = 2.0
b = 3.0
c = 4.0

puts a**2
puts b**2
puts c**2