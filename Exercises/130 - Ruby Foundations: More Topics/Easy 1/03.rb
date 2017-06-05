def missing(arr)
  min = arr.first
  max = arr.last

  (min..max).to_a.select {|x| !arr.include? x}
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []