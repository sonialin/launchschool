def balanced?(str)
  return false if str.count("(") != str.count(")")
  stack = []
  str.chars.each do |char|
    if char == ")" 
      if !stack.include?("(")
        return false
      else
        stack.pop
      end
    elsif char == "("
      stack << char
    end
  end
  return false if !stack.empty?
  true
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false