def interleave(arr1, arr2)
  arr = []
  i = 0
  loop do
    arr << arr1[i] << arr2[i]
    i += 1
    break if i == arr1.length
  end
  arr
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']