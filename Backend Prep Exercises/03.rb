array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_number_array = array.select { |i| i % 2 == 1 }

puts odd_number_array