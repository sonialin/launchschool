class Trinary
  def initialize(str)
    @str = str
    @str_arr = str.chars
  end

  def to_decimal
    return 0 if @str.match(/[^0-2]/)
    power = 0
    product_sum = 0
    @str_arr.map(&:to_i).reverse.each do |d|
      product_sum += d * 3 ** power
      power += 1
    end
    product_sum
  end
end