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

def is_palindrome?(str)
  str == str.reverse and str.length > 1
end

def palindromes(str)
  substrings(str).select {|substring| is_palindrome?(substring)}
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]