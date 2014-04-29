#iterating_over_hashes

person = {name: 'Bob', height: '6 ft', weight: 160, hair: 'brown'}

person.each { |key, value| puts "Bob's #{key} is #{value}" }