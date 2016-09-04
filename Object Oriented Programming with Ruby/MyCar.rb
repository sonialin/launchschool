module Uberable
  def uber
    puts "I'm a uber."
  end
end

class Vehicle
  attr_accessor :color

  attr_reader :year, :model

  @@num_of_vehicles = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@num_of_vehicles += 1
  end

  def self.gas_mileage(miles, gallon)
    puts miles/gallon
  end

  def self.num_of_vehicles
    @@num_of_vehicles
  end

  def current_speed
    puts "The current speed is #{@current_speed}"
  end

  def speed_up(added_speed)
    @current_speed += added_speed
  end

  def brake(reduced_speed)
    @current_speed -= reduced_speed
  end

  def shut_off
    @current_speed = 0
  end

  def spray_paint(color)
    self.color = color
  end

  def get_age
    puts "The vehicle is #{calculate_age}-year-old."
  end

  private

  def calculate_age
    Time.now.year - year
  end

end

class MyCar < Vehicle

  include Uberable

  NUM_OF_SEATS = 5

  def to_s
    puts "This car is a #{year} #{color} #{model}"
  end

end

class MyTruck < Vehicle

  NUM_OF_SEATS = 2

  def to_s
    puts "This truck is a #{year} #{color} #{model}"
  end

end



car = MyCar.new(2000, 'blue', 'Tiara')
car.current_speed
car.speed_up(20)
car.current_speed
car.brake(10)
car.current_speed
car.color = 'red'
puts car.color
puts car.year
car.spray_paint("silver")
puts car.color
MyCar.gas_mileage(5, 2)
car.to_s
car.uber

truck = MyTruck.new(1995, 'grey', 'Ford')

puts Vehicle.num_of_vehicles

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
truck.get_age
car.get_age