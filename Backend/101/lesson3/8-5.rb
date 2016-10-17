def is_an_ip_number?(x)
  x%2 == 0 # => shorthand for testing as the details of the is_an_ip_number? method is unknown
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  while dot_separated_words.size != 4
    return false
  end

  while dot_separated_words.size > 0
    word = dot_separated_words.pop.to_i
    return false if !is_an_ip_number?(word)
  end
    
  return true
end

puts dot_separated_ip_address?('22.100.26.29')
