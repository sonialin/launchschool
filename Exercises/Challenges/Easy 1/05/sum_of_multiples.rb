class SumOfMultiples
  def self.to(n)
    a = SumOfMultiples.new
    (0...n).to_a.select {|e| a.is_divisible(e, [3, 5]) }.reduce(:+)
  end

  def initialize(*numbers)
    @numbers = numbers
  end

  def to(n)
    (0...n).to_a.select {|e| is_divisible(e, @numbers) }.reduce(:+)
  end

  def is_divisible(num, base)
    base.each do |n|
      return true if num % n == 0
    end
    return false
  end
end