# original solution
title = "Flintstone Family Members"

title_into_array = title.split('')

num_of_spaces = 0
num_of_characters = 0

title_into_array.each do |x|
  if x == " "
    num_of_spaces+=1
  else
    num_of_characters+=1
  end
end

characters_per_space = (40 - num_of_characters)/num_of_spaces

puts characters_per_space

# suggested solution
new_title = title.center(40)
puts new_title