def is_odd?(num)
  if num % 2 == 0
    return false
  else
    return true
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false