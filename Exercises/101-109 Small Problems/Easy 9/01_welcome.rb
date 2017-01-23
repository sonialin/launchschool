def greetings(arr, h)
  name = arr.map {|str| str + " "}
  name = name.join.chop
  puts "=> Hello, #{name}! Nice to have a #{h[:title]} #{h[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.