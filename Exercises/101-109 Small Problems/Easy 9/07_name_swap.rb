def swap_name(str)
  arr = str.split
  "#{arr[1]}, #{arr[0]}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'