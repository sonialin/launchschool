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

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']