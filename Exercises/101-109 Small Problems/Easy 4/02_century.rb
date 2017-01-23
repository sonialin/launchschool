def century(yr) 
  if yr % 100 == 0
    centry_num = yr / 100
  else
    centry_num = yr/100 + 1
  end

  return centry_num.to_s + "th" if (11..13).include?(centry_num % 100)

  if centry_num % 10 == 1
    trailing_chars = "st"
  elsif centry_num % 10 == 2
    trailing_chars = "nd"
  elsif centry_num % 10 == 3
    trailing_chars = "rd"
  else
    trailing_chars = "th"
  end

  centry_num.to_s + trailing_chars
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'