require 'pry'

def block_word?(word)
  blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
          ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
          ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
  word.chars.each do |letter|
    return false if !blocks.flatten.index(letter.upcase)
    blocks.delete_if {|block| block.index(letter.upcase)}
  end
  return true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true