def rotate_array(arr)
  new_arr = []
  arr.each {|num| new_arr << num}
  new_arr << new_arr[0]
  new_arr.delete_at(0)
  new_arr
end

def rotate_rightmost_digits(num, i)
  arr = num.to_s.split("")
  arr1 = arr[0..(-1 -i)]
  arr2 = arr[-i..-1]
  (arr1 + rotate_array(arr2)).join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917