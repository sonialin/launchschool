class Atbash
  ALPHABET = ("a".."z").to_a

  def self.encode(str)
    converted_str = ""
    char_arr = str.downcase.chars

    char_arr.each do |c|
      if /[[:alpha:]]/.match(c)
        converted_char = find_counterpart(c)
        converted_str << converted_char
      elsif /[[:digit:]]/.match(c)
        converted_str << c
      end
    end

    if str.size > 5
      converted_str.chars.each_slice(5).map(&:join).join(" ")
    else
      converted_str
    end
  end

  def self.find_counterpart(ltr)
    position = ALPHABET.index(ltr)
    converted_position = ALPHABET.size - 1 - position
    ALPHABET[converted_position]
  end
end
