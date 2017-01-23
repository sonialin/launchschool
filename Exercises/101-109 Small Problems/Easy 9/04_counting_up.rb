def sequence(num)
  arr = []
  num.times do |n|
    arr << n + 1
  end
  arr
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]