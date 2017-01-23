def reverse_sentence(str)
  words = str.split(" ")
  words = words.reverse!.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'