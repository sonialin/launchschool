DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_signed_integer(str)
  sum = 0

  if str.slice(0) == '-' || str.slice(0) == '+'
    sign = str.slice!(0)
  end

  power = (str.chars.size - 1 )
  str.chars.each do |char|
    sum += DIGITS[char] * 10 ** power
    power -= 1
  end

  if sign && sign == '-'
    sum *= -1
  end 

  sum
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100