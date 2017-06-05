module Delegatable
  def delegate
  end
end

class Employee
  def initialize(name, serial_num, office)
    @name = name
    @serial_num = serial_num
    @office = office
  end

  def to_s
    puts "Name: #{@name}"
    puts "Serial number: #{@serial_num}"
    puts "Vacation days: #{@vacation}"
    puts "Office: #{@office}"
  end
end

class Fulltime < Employee
  def initialize(name, serial_num, office, vacation)
    super(name, serial_num, office)
    @vacation = vacation
  end

  def take_vacation
  end
end

class Executive < Fulltime
  include Delegatable

  def initialize(name, serial_num)
    @name = name
    @serial_num = serial_num
    @office = "corner office"
    @vacation = 20
  end
end

class Manager < Fulltime
  include Delegatable

  def initialize(name, serial_num)
    @name = name
    @serial_num = serial_num
    @office = "private office"
    @vacation = 14
  end
end

class Regular < Fulltime
  def initialize(name, serial_num)
    @name = name
    @serial_num = serial_num
    @office = "cubicle"
    @vacation = 10
  end
end

class Parttime < Employee
  def initialize(name, serial_num)
    @name = name
    @serial_num = serial_num
    @office = "open workspace"
  end
end