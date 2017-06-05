def fibonacci(n)
  a = 1
  b = 1
  current = 0
  (n - 3 + 1).times do
    current = a + b
    a = b
    b = current
  end
  current
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501