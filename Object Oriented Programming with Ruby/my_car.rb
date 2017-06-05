module GPSable
  def GPS
    puts "GPSing"
  end
end

class Vehicle

  attr_accessor :color
  attr_reader :year, :model

  @@num_of_vehicles = 0

  def self.gas_mileage(miles, gallon)
    miles.to_f / gallon
  end

  def self.num_of_vehicles
    @@num_of_vehicles
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    puts "Car initialized: #{@year} #{@color} #{@model}."
    @@num_of_vehicles += 1
  end

  def accelerate(rate)
    @speed += rate
    puts "Accelerate by #{rate} mph."
    puts "Current speed is #{@speed} mph."
  end

  def brake(rate)
    @speed -= rate
    puts "Brake by #{rate} mph."
    puts "Current speed is #{@speed} mph."
  end

  def turn_off
    @speed = 0
    puts "Turn off the car."
    puts "Current speed is #{@speed} mph."
  end

  def spray_paint(color)
    self.color = color
  end

  def to_s
    "A #{self.year} #{self.color} #{self.model}."
  end

  def age
    years_old
  end

  private

  def years_old
    Time.now.year - year
  end

end

class MyCar < Vehicle
  include GPSable
  OWNER = ['Lin', 'Sonia']
end

class MyTruck < Vehicle
  COMPANY = ['ABC']
end

car = MyCar.new(1983, 'blue', 'Camry')
car.accelerate(20)
car.brake(10)
car.turn_off
car.color = 'grey'
puts "The color of the car is now #{car.color}."
puts "The year of the car is #{car.year}."
car.spray_paint('silver')
puts "The color of the car is now #{car.color}."
my_gas_mileage = MyCar.gas_mileage(17, 3)
puts "The gas mileage of my car is #{my_gas_mileage}."
puts car
car.GPS
puts "The car is #{car.age} years old."

truck = MyTruck.new(1990, 'white', 'Ford')
num_of_vehicles = Vehicle.num_of_vehicles
puts "There are #{num_of_vehicles} vehicles now."