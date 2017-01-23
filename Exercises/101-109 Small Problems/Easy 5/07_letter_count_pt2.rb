def word_sizes(str)
  h = {}
  str.split(" ").each do |substr|
    cleaned_str_arr = []
    substr.chars.each do |char|
      cleaned_str_arr << char if /[a-z]/.match(char.downcase)
    end
    cleaned_str = cleaned_str_arr.join("")

    if h[cleaned_str.length]
      h[cleaned_str.length] += 1 
    else
      h[cleaned_str.length] = 1
    end
  end
  h
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}