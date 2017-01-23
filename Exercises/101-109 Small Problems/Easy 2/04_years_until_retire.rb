def get_year_to_retire(years_remaining)
  year_to_retire = Time.now.year + years_remaining
end

def years_remaining(age, retire_age)
  years_from_now = retire_age - age
end

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
age_to_retire = gets.chomp.to_i

puts "It's " + Time.now.year.to_s + ". You will retire in " + get_year_to_retire(years_remaining(current_age, age_to_retire)).to_s + "."
puts "You have only " + years_remaining(current_age, age_to_retire).to_s + " years of work to go!"
