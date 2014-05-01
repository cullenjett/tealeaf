#good_dog_class

module Swimable
  def swim
    "I'm swimming!"
  end
end

class Animal
  
  def speak
    "Hello"
  end

  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

class Fish < Animal
  include Swimable
end

class Mammal < Animal
end

class Cat < Mammal
end

class GoodDog < Mammal
  include Swimable
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says Arf!"
  end
end


sparky = GoodDog.new("Sparky")
paws = Cat.new
neemo = Fish.new
fido = Animal.new

puts sparky.speak
puts paws.speak
puts '-----'
puts sparky.swim
puts neemo.swim
# -- puts paws.swim
puts '-----'
puts fido.a_public_method

