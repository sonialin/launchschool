def max_by(arr)
  return nil if arr.empty?

  element_with_max_yield = arr.first
  max = yield(arr.first)
  arr[1..-1].each_with_index do |e, index|
    if yield(e) > max
      max = yield(e)
      element_with_max_yield = e
    end
  end
  element_with_max_yield
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil