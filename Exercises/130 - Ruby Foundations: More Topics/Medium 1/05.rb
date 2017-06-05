items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# 1.
# gather(items) do | *fruits_and_veggies, others |
#   puts fruits_and_veggies.join(", ")
#   puts others
# end

#2.
# gather(items) do | fruits, *veggies, others|
#   puts fruits
#   puts veggies.join(", ")
#   puts others
# end

#3.
# gather(items) do | fruits, *others |
#   puts fruits
#   puts others.join(", ")
# end

#4.
gather(items) do | item1, item2, item3, item4 |
  print item1 + ", "
  print item2 + ", "
  print item3 + ", "
  print item4
  puts
end