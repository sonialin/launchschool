def select(arr)
  i = 0
  new_arr = []

  while i < arr.length
    selected = yield(arr[i])
    if selected
      new_arr << arr[i]
    end
    i += 1
  end

  new_arr
end

array = [1, 2, 3, 4, 5]

puts select(array) { |num| num.odd? }      # => [1, 3, 5]
puts select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
puts select(array) { |num| num + 1 }   