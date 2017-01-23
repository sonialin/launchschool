require 'pry'

def substrings_at_start(str)
  arr = []
  input_arr = str.chars
  input_arr.each_with_index do |char, index|
    substring = ""
    loop do
      substring << input_arr[index]
      index -= 1
      break if index < 0
    end
    arr << substring.reverse
  end
  arr
end

def substrings(str)
  arr = []
  loop do
    arr << substrings_at_start(str)
    if str.length == 1
      break
    else
      str.slice!(0)
    end
  end
  arr.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]