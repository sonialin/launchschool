def crunch(str)
  a = []
  str.chars.each do |char|
    a << char if a.last != char
  end
  a.join("")
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''