def zip(arr1, arr2)
  new_arr = []
  i = 0
  loop do
    new_arr << [arr1[i], arr2[i]]
    i += 1
    break if i == arr1.length
  end
  new_arr
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]