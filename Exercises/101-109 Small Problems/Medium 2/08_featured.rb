def featured(n)
  loop do
    n += 1
    return n if n.odd? && n % 7 == 0 && (n.to_s.chars.uniq == n.to_s.chars)
    break if n > 9_876_543_210
  end
  "There is no possible number that fulfills those requirements"
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements