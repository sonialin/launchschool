require 'date'

def friday_13th?(yr)
  d1 = Date.new(yr, 1, 1)
  d2 = Date.new(yr, 12, 31)
  (d1..d2).to_a.count {|day| day.friday? && day.mday == 13 }
end

puts friday_13th?(2015) == 3
puts friday_13th?(1986) == 1
puts friday_13th?(2019) == 2