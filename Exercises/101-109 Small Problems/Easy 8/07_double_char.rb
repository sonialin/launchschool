def repeater(str)
  arr = []
  str.chars.each {|char| arr << char * 2}
  arr.join
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''