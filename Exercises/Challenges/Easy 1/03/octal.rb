class Octal
  def initialize(input)
    @input = input
  end

  def to_decimal
    input_chars = @input.chars
    return 0 if input_chars.any? { |i| i.to_i >= 8 } || input_chars.any? { |i| i.to_i.to_s != i }
    sum = 0
    power = @input.size - 1
    input_chars.map(&:to_i).each do |d|
      sum += d * 8**power
      power -= 1
    end
    sum
  end
end