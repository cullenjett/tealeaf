#classes_and_objects1

class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def to_s
    "This car is a #{self.color} #{self.year} #{@model}"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon"
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

end

lumina = MyCar.new(1997, "chevy lumina", "white")
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_off
lumina.current_speed

puts '-----'

lumina.color = 'black'
puts lumina.color
puts lumina.year

puts '-----'

lumina.spray_paint('green')
puts lumina.color

puts '-----'

MyCar.gas_mileage(14, 450)

puts '-----'

puts lumina 
