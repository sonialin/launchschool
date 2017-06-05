class Phrase
  def initialize(str)
    @str_arr = str.scan(/\b[\w']+\w+\b|\d+/)
  end

  def word_count
    counter = {}
    @str_arr.each do |word|
      word.downcase!
      if counter[word]
        counter[word] += 1
      else
        counter[word] = 1
      end
    end
    counter
  end
end

phrase = Phrase.new('one fish two fish red fish blue fish')
p phrase.word_count