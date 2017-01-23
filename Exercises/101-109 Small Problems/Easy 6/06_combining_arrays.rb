def merge(arr1, arr2)
  new_arr = []
  i1 = 0
  i2 = 0
  loop do
    new_arr << arr1[i1] if i1 < arr1.length
    new_arr << arr2[i2] if i2 < arr2.length
    i1 += 1
    i2 += 1
    break if i1 == arr1.length and i2 == arr2.length
  end
  new_arr.sort.uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]