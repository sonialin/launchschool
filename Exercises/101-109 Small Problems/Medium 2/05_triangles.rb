def triangle(a, b, c)
  arr = [a, b, c]
  return :invalid if arr.count {|x| x <= 0} > 0
  return :invalid if arr.sort!.shift + arr.shift < arr.first
  return :equilateral if a == b && b == c
  return :scalene if a != b && b != c
  return :isosceles if a == b || b == c || a == c
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid