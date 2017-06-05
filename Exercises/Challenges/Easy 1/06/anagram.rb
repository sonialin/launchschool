class Anagram
  def initialize(word)
    @word = word
  end

  def match(candidates)
    candidates.select do |c|
      c.downcase.chars.sort == @word.downcase.chars.sort && c.downcase.chars != @word.downcase.chars
    end
  end
end