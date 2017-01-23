def average(arr)
  sum = 0
  arr.each {|element| sum += element}
  return sum / arr.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
