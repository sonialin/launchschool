class Student
  attr_accessor :name
  attr_reader :grade

  def initialize(name, grade)
    name = name
    @grade = grade
    puts "Student #{name} is initialized."
  end

  def better_grade_than?(student)
    "Well done!" if @grade > student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 92)
bob = Student.new("Bob", 88)
puts joe.better_grade_than?(bob)
