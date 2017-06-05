def letter_percentages(str)
  characters = str.chars
  lowercase = characters.count {|char| char.match(/[a-z]/)}
  uppercase = characters.count {|char| char.match(/[A-Z]/)}
  others = characters.count {|char| char.match(/[^A-Za-z]/)}
  lowercase_percentage = lowercase.to_f / characters.length * 100
  uppercase_percentage = uppercase.to_f / characters.length * 100
  others_percentage = others.to_f / characters.length * 100
  { lowercase: lowercase_percentage, uppercase: uppercase_percentage, neither: others_percentage }
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }