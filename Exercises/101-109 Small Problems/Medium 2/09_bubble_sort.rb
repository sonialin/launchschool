def bubble_sort!(arr)
  loop do
    num_of_swap = 0
    i = 0
    loop do
      if arr[i] > arr[i + 1]
        arr[i + 1], arr[i] = arr[i], arr[i + 1]
        num_of_swap += 1
      end
      i += 1
      break if i == arr.size - 1
    end
    break if num_of_swap == 0
  end
  arr
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)