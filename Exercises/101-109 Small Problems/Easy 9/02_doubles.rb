def twice(int)
  num_to_string = int.to_s
  if num_to_string.length % 2 == 1
    int * 2
  else
    if num_to_string.slice(0, num_to_string.length / 2) == num_to_string.slice(num_to_string.length / 2, num_to_string.length)
      int
    else
      int * 2
    end
  end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10