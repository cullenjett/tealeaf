#inheritance

module Towable

  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@vehicle_count = 0

  attr_accessor :color
  attr_reader :year, :model

  def self.vehicle_count
    "There are #{@@vehicle_count} vehicles on the road."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon"
  end

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@vehicle_count += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas pedal and accelerate #{number} mph"
  end

  def brake(number)
    @current_speed -= number
    puts "You slam on the brakes and slow yourself #{number} mph"
  end

  def current_speed
    puts "You are now going #{@current_speed} mph"
  end

  def shut_off
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{self.color} paint job looks great!"
  end  

  def age
    puts "The #{self.model} is #{years_old} years old!"
  end

  private

  def years_old
    Time.now.year - self.year
  end

end


class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "This car is a #{self.color} #{self.year} #{@model}"
  end
end


class MyTruck < Vehicle
  include Towable
  NUMBER_OF_DOORS = 2

  def to_s
    "This truck is a #{self.color} #{self.year} #{@model}"
  end
end


car = MyCar.new('2011', 'VW Golf', 'Red')
truck = MyTruck.new('2002', 'Toyota Tundra', 'Black')

puts car
puts truck
puts '-----'
puts Vehicle.vehicle_count
puts '-----'
puts truck.can_tow?(1999)
puts '-----'
puts MyCar.ancestors
puts ''
puts MyTruck.ancestors
puts ''
puts Vehicle.ancestors
puts '-----'
lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_off
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")
puts '-----'
lumina.age
puts '-----'

#----- moving on from the vehicles -----

class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

timmy = Student.new("Timmy", 99)
joey = Student.new("Joey", 65)

puts "Timmy is smarter than Joey!" if timmy.better_grade_than?(joey)