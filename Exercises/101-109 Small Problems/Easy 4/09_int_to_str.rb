DIGITS = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
          5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def integer_to_string(num)
  arr = []
  loop do
    arr << DIGITS[num % 10]
    num /= 10
    break if num == 0
  end
  arr.reverse.join("")
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
