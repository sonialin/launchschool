def get_tip(b, t)
  tip = b * t / 100
end

def get_total(b, tip)
  total = b + tip
end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

puts "The tip is $" + get_tip(bill, tip_percentage).to_s
puts "The total is $" + get_total(bill, get_tip(bill, tip_percentage)).to_s