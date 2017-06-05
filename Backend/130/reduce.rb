def reduce(arr, initial_val = 0)
  i = 0
  final_val = initial_val

  while i < arr.length
    final_val = yield(final_val, arr[i])
    i += 1
  end

  final_val
end

array = [1, 2, 3, 4, 5]

puts reduce(array) { |acc, num| acc + num }                    # => 15
puts reduce(array, 10) { |acc, num| acc + num }                # => 25
puts reduce(array) { |acc, num| acc + num if num.odd? }