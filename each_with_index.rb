array = [88, 12, 99, 30, 5]

array.each_with_index {|value, index|
  puts "#{value} is at position #{index}"
}