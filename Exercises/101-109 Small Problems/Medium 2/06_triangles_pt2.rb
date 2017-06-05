def triangle(x, y, z)
  arr = [x, y, z]
  return :invalid if arr.reduce(:+) != 180 || arr.include?(0)
  return :right if arr.include?(90)
  return :acute if arr.count {|a| a >= 90} == 0
  return :obtuse if arr.count {|a| a > 90} > 0
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid