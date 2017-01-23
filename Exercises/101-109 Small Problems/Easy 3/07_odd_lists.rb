def oddities(arr)
  odd_list = []
  i = 0
  loop do
    break if i >= arr.length 
    odd_list << arr[i]
    i += 2
  end
  odd_list
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc'] 
puts oddities([123]) == [123]
puts oddities([]) == []