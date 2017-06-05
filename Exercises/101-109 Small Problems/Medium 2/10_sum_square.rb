def sum_square_difference(n)
  first = 1.upto(n).to_a.reduce(:+) ** 2
  second = 1.upto(n).to_a.inject {|sum, num| sum + num ** 2}
  first - second
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2) 1 + 4 + 9
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150