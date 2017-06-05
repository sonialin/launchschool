class Text
  def initialize(text)
    @text = text
  end

  def search_letter(ltr)
    positions = []
    beginning_index = 0
    ending_index = @text.length - 1
    
    loop do
      break if beginning_index > ending_index
      i = @text[beginning_index..ending_index].index(ltr)
      if i != nil
        positions << (i + beginning_index)
        beginning_index += positions.last + 1
      else
        break
      end    
    end
    
    positions
  end

  def swap(letter_one, letter_two)
    @text.gsub(letter_one, letter_two)
  end

  def word_count
    @text.split.count
  end
end