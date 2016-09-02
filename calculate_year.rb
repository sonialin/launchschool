puts "How old are you?"

age = gets.chomp.to_i

def calculate_age_years_from_now(current_age, years_from_now)
  new_age = current_age + years_from_now
end

puts "10 years from now you will be: \n#{calculate_age_years_from_now(age, 10)}"
puts "20 years from now you will be: \n#{calculate_age_years_from_now(age, 20)}"
puts "30 years from now you will be: \n#{calculate_age_years_from_now(age, 30)}"
puts "40 years from now you will be: \n#{calculate_age_years_from_now(age, 40)}"