def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  str = str.delete(" ")
  arr = []
  str.chars.each {|char| arr << char.downcase if /[a-z0-9]/.match(char.downcase)}
  palindrome?(arr.join(""))
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
puts real_palindrome?('123bb123') == false # extra test case when the digits do not mirror each other