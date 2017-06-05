class PigLatin
  CONSONANT_EXCEPTIONS = ["qu", "squ"]
  VOWEL_EXCEPTIONS = ["yt", "xr"]

  def self.translate(word)
    words = word.split
    mutated_words = []

    words.each do |word|
      word_chars = word.chars    

      loop do
        if word_chars.first.match(/[aeiouAEIOU]/) || self.vowel_exceptions?(word)
          mutated_words << word_chars.push("ay").join
          break
        else
          if self.consonant_exceptions?(word)
            word_chars = word_chars.rotate(self.num_of_ltrs_to_rotate(word))
          else
            word_chars = word_chars.rotate
          end
        end
      end
    end

    mutated_words.join(" ")
  end

  def self.vowel_exceptions?(w)
    VOWEL_EXCEPTIONS.any? {|c| w.index(c) == 0}
  end

  def self.consonant_exceptions?(w)
    CONSONANT_EXCEPTIONS.any? {|c| w.index(c) == 0}
  end

  def self.num_of_ltrs_to_rotate(w)
    CONSONANT_EXCEPTIONS.select {|c| w.index(c) == 0}.first.size
  end
end