class String
  def parse
    words = self.scan(/\b\w+\b/)
    parsed_words = []
    words.each_with_index do |w, i|
      if i.odd?
        parsed_words << w.reverse
      else
        parsed_words << w
      end
    end

    final_string = parsed_words.join(" ")
    final_string << "." if parsed_words.size > 0
    final_string   
  end
end

p "whats the matter with kansas.".parse
p "hello word   .".parse
p "".parse
p "  hello  .".parse
p "hello".parse