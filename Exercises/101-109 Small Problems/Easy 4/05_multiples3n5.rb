def multisum(num)
  multiples = []
  (1..num).to_a.each do |n|
    multiples << n if n % 3 == 0 || n % 5 == 0
  end

  sum = 0
  sum = multiples.inject {|s, n| s + n}
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168