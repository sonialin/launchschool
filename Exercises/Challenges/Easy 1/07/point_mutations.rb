class DNA
  def initialize(str1)
    @str1 = str1
  end

  def hamming_distance(str2)
    distance = 0
    @str1.chars.each_with_index do |c, i|
      break if !str2[i]
      distance += 1 if c != str2.chars[i]
    end
    distance
  end
end