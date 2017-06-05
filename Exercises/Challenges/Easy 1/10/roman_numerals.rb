class Fixnum
  CONVERSIONS = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 
                  100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
                  10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}

  def to_roman
    romans = []
    closest_roman_representation(self, romans)
    romans.join("")
  end

  def closest_roman_representation(num, arr)
    case num
    when 1000..5000 then closest = 1000
    when 900..999 then closest = 900
    when 500..899 then closest = 500
    when 400..499 then closest = 400
    when 100..399 then closest = 100
    when 90..99 then closest = 90
    when 50..89 then closest = 50
    when 40..49 then closest = 40
    when 10..39 then closest = 10
    when 9 then closest = 9
    when 5..8 then closest = 5
    when 4 then closest = 4
    when 1..3 then closest = 1
    end

    arr << CONVERSIONS[closest]
    num -= closest
    
    closest_roman_representation(num, arr) unless num == 0
  end
end