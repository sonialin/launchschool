def staggered_case(str)
  arr = []
  str.chars.each_with_index do |char, index|
    if index % 2 == 0
      arr << char.upcase
    else
      arr << char.downcase
    end
  end
  arr.join("")
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'