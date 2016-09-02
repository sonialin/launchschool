array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_number_array = array.select { |i| i % 2 == 1 }

odd_number_array.unshift(0).push(11)

odd_number_array.pop

odd_number_array.push(3)

odd_number_array.uniq!

puts odd_number_array