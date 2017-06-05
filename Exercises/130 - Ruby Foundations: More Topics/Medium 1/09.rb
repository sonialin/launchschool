# fact = Enumerator.new do |y|
#   current_val = 1
#   result = 1
#   loop do
#     result *= current_val
#     y << result
#     current_val += 1
#   end
# end

# 5.times {puts fact.next}

factorial = Enumerator.new do |yielder|
  accumulator = 1
  number = 1
  loop do
    accumulator = accumulator * number
    yielder << accumulator
    number += 1
  end
end

7.times { puts factorial.next }

factorial.rewind

factorial.each_with_index do |number, index|
  puts number
  break if index == 6
end