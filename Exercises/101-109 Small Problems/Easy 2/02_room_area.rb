def get_area_m(l, w)
  l * w
end

def get_area_f(area_m)
  (area_m * 10.7639).round(2)
end

puts "Enter the length of the room in meters:"
length_in_meter = gets.chomp.to_f
puts length_in_meter

puts "Enter the width of the room in meters:"
width_in_meter = gets.chomp.to_f
puts width_in_meter

puts "The area of the room is " + get_area_m(length_in_meter, width_in_meter).to_s + " square meters (" + get_area_f(get_area_m(length_in_meter, width_in_meter)).to_s + " square feet)."

