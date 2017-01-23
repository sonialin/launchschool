def show_multiplicative_average(arr)
  product = 1.000
  arr.each do |num|
    product *= num
  end
  result = (product / arr.length).round(3).to_s
  if result.length - 1 - result.index('.') == 2
    puts result + "0"
  elsif result.length - 1 - result.index('.') == 1
    puts result + "00"
  else
    puts result
  end
end

show_multiplicative_average([3, 5])
#The result is 7.500

show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667