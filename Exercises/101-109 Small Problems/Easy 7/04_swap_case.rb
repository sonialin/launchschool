def swapcase(str)
  arr = []
  str.chars.each do |char|
    if /[a-z]/.match(char)
      arr << char.upcase
    elsif /[A-Z]/.match(char)
      arr << char.downcase
    else
      arr << char
    end
  end
  arr.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'