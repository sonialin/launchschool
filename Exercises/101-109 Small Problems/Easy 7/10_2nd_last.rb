def penultimate(str)
  arr = str.split
  arr[arr.length - 2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'