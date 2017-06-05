def each(arr)
  i = 0
  while i < arr.length
    yield(arr[i])
    i += 1
  end
  arr
end

return_value = each([1, 2, 3, 4]) do |n|
  puts n
end

puts "The return value is #{return_value}"

odd_num = each([1, 2, 3, 4, 5]) {|num| "do nothing"}.select{ |num| num.odd? } 

puts odd_num