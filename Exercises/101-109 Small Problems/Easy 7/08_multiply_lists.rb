def multiply_list(arr1, arr2)
  arr = []
  i = 0
  loop do
    arr << arr1[i] * arr2[i]
    i += 1
    break if i == arr1.length
  end
  arr
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]