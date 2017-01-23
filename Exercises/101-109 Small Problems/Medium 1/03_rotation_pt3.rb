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

def max_rotation(num)
  n = num.to_s.length
  current_num = num
  n.times do
    current_num = rotate_rightmost_digits(current_num, n)
    n -= 1
  end
  current_num
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845