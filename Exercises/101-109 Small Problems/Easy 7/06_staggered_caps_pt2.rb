def staggered_case(str)
  arr = []
  is_upcase = true
  str.chars.each do |char|
    if char =~ /[a-zA-Z]/
      if is_upcase
        arr << char.upcase
        is_upcase = false
      else
        arr << char.downcase
        is_upcase = true
      end
    else
      arr << char
    end
  end
  arr.join("")
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'