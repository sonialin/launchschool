module Swim
  def swim
    "swimming!"
  end
end

class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
  include Swim

  def speak
    'bark!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog
  def swim
    'can\'t swim!'
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

pete = Pet.new
kitty = Cat.new
dave = Dog.new
bud = Bulldog.new

p pete.run                # => "running!"
#p pete.speak              # => NoMethodError

p kitty.run               # => "running!"
p kitty.speak             # => "meow!"
#p kitty.fetch             # => NoMethodError

p dave.speak              # => "bark!"

p bud.run                 # => "running!"
p bud.swim                # => "can't swim!"

p "Dog method lookup path:"
p Dog.ancestors

p "Bulldog method lookup path:"
p Bulldog.ancestors

p "Cat method lookup path:"
p Cat.ancestors