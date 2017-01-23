def swap(str)
  new_arr = []
  str.split(" ").each do |word|
    first_letter = word[0]
    last_letter = word[word.length - 1]
    word_array = word.chars
    word_array[0] = last_letter
    word_array[word_array.size - 1] = first_letter
    new_arr << word_array.join("")
  end
  new_arr.join(" ")
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'