def factorial(x)
  product = 1

  while x>0 do
    product *= x
    x-=1
  end

  return product
end

puts factorial(5)
puts factorial(6)
puts factorial(7)
puts factorial(8)