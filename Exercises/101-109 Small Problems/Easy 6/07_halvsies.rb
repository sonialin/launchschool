def halvsies(arr)
  if arr.length == 0
    return [[], []]
  elsif arr.length == 1
    return [arr, []]
  end

  i1 = 0

  if arr.length % 2 == 1
    i2 = arr.length / 2 + 1
  else
    i2 = arr.length / 2
  end

  arr1 = []
  arr2 = []

  loop do
    arr1 << arr[i1]
    i1 += 1
    break if i1 == i2
  end

  loop do
    arr2 << arr[i2]
    i2 += 1
    break if i2 == arr.length
  end

  new_arr = []
  new_arr << arr1 << arr2
  new_arr
end


puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]