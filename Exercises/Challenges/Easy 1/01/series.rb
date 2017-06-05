class Series
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def slices(n)
    new_arr = []
    i = 0
    j = i + n - 1
    loop do
      new_arr << @num[i..j].chars.map(&:to_i)
      i += 1
      j += 1
      break if j == @num.length
    end
    new_arr
  end
end