def find_fibonacci_index_by_length(i)
  fib = [1, 1]
  current_index = 2
  loop do
    fib[current_index] = fib[current_index - 2] + fib[current_index - 1]
    break if fib[current_index] / 10 ** (i - 1) > 0
    current_index += 1
  end
  current_index + 1 #because the desired fib is 1 based
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847