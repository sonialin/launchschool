class Student
  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(n)
    if grade > n.grade
      return true
    else
      return false
    end
  end

  protected

  def grade
    @grade
  end
end

bob = Student.new('Bob', 73)
joe = Student.new('Joe', 90)

puts "Well done!" if joe.better_grade_than?(bob)
