def reverse_words(str)
  words = str.split(" ")

  new_words = words.map do |word|
    if word.size < 5
      word
    else
      word.reverse!
    end
  end

  if new_words.size == 1
    new_words
  else
    new_words.join(" ")
  end
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS