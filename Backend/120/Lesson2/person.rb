class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    name_parts = full_name.split
    if name_parts.size > 1
      self.first_name = name_parts[0]
      self.last_name = name_parts[1]
    else
      self.first_name = name_parts[0]
      self.last_name = ""
    end
  end

  def name
    name = "#{first_name} #{last_name}".strip
  end

  def name=(name)
    name_parts = name.split
    if name_parts.size > 1
      self.first_name = name_parts[0]
      self.last_name = name_parts[1]
    else
      self.first_name = name_parts[0]
      self.last_name = ""
    end
  end

  def to_s
    name
  end
end

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
p bob.first_name            # => 'John'
p bob.last_name             # => 'Adams'

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

p bob.name == rob.name

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"