def letter_case_count(str)
  h = {lowercase: 0, uppercase: 0, neither: 0}
  str.chars.each do |char|
    if /[a-z]/.match(char)
      h[:lowercase] += 1
    elsif /[A-Z]/.match(char)
      h[:uppercase] += 1
    else
      h[:neither] += 1
    end
  end
  h
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }