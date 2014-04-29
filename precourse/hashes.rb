#hashes

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |key, value|
	key == :sisters || key == :brothers
	end

arr = immediate_family.values.flatten

p arr         

#---merge hashes---

cat = {name: 'whiskers'}
weight = {weight: '10 lbs'}

puts cat.merge(weight)
puts cat
puts weight

puts cat.merge!(weight)
puts cat
puts weight

#---print keys, print values, print both---

person = {name: "cullen", age: 25, eyes: "blue"}

person.each_key {|k| puts k}
person.each_value {|v| puts v}
person.each { |key, value| puts "#{key}: #{value}" }

#---

if person.has_value?("cullen")
	puts "GOT IT"
else 
	puts "NOPE"
end

#---Find the words that are anagrams---
# Iterate over the words array, and for each word:
# - put it in alphabetical order (ie 'mode ==> demo')
#   - if the key exists, append to the key's list
#   - else, create a new key with the word in the list
# i.e. {demo: ['demo', 'mode']}



words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

# this takes each word in the array, alphebetizes it, puts that as the key in the new hash,
# and adds the word as the value in the new array
words.each do |word|
  key = word.split('').sort.join
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
end

#puts result

result.each do |key, value|
  puts "----"
  puts value
end



