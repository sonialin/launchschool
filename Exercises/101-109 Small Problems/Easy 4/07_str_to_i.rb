DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(str)
  sum = 0
  power = (str.chars.size - 1 )
  str.chars.each do |char|
    sum += DIGITS[char] * 10 ** power
    power -= 1
  end
  sum 
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
