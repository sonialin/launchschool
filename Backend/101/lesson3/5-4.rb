# The output will be [1, 3] as shift removes the first element of the array
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# The output will be [1,2] as the pop method removes the ending element of the array
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
