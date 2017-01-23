def cleanup(str)
  arr = []
  str.chars.each do |char|
    if char.downcase.match(/[a-z]/)
      arr << char
    else
     arr << " " if arr.last != " " 
    end
  end
  arr.join("")
end

puts cleanup("---what's my +*& line?") == ' what s my line '