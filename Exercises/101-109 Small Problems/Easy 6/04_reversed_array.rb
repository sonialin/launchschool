def reverse!(arr)
  return arr if arr.length == 0 || arr.length == 1

  current_position = arr.length - 2
  first_position = arr.length - 1
  loop do 
    arr << arr[current_position]
    current_position -= 1
    break if current_position == -1
  end

  i = 0
  loop do
    arr.shift
    i += 1
    break if i == first_position
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
reverse!([]) # => []
puts list == []