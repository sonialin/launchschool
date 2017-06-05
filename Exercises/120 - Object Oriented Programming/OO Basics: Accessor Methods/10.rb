class Person
  def name=(name)
    split_name = name.split
    @first_name = split_name[0]
    @last_name = split_name[1]
  end

  def name
    "#{@first_name} #{@last_name}"
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name