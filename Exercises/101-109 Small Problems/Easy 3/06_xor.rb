def xor?(statement1, statement2)
  return true if (statement1 && !statement2) || (!statement1 && statement2)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false