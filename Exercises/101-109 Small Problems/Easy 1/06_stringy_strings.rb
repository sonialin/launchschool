def stringy(num)
  digit_array = []
  num.times do |i|
    if i%2 == 0
      digit_array << 1
    else
      digit_array << 0
    end
  end
  digit_array.join("")
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'