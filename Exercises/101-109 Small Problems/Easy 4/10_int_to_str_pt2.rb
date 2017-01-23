DIGITS = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
          5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def signed_integer_to_string(num)
  arr = []
  if num < 0
    is_negative = true
    num = (- 1) * num
  elsif num > 0
    is_positive = true
  end

  loop do
    arr << DIGITS[num % 10]
    num /= 10
    break if num == 0
  end

  str = arr.reverse.join("")
  if is_positive
    '+' + str
  elsif is_negative
    '-' + str
  else
    str
  end
    
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'