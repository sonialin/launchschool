class Luhn
  def initialize(num)
    @num = num.to_s.chars.map(&:to_i)
  end

  def addends
    digits = []
    @num.reverse.each_with_index do |c, i|
      if i.even?
        digits << c
      else
        doubled = c * 2
        doubled > 10 ? digits << doubled - 9 : digits << doubled
      end
    end
    digits.reverse
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(num)
    (0..9).each do |e|
      modified_luhn = num.to_s.chars.push(e).join("").to_i
      if Luhn.new(modified_luhn).valid?
        return modified_luhn
      end
    end
  end
end