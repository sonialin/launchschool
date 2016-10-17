# m = p * (j / (1 - (1 + j)**-n))

puts "Please enter the loan amount in dollars:"
loan_amount = gets.chomp.to_f
puts "Please enter the annual percentage rate in %:"
annual_percentage_rate = gets.chomp.to_f
puts "please enter the loan duration in years:"
loan_duration_in_years = gets.chomp.to_f

monthly_interest_rate = annual_percentage_rate / 12
loan_duration_in_months = loan_duration_in_years * 12

monthly_payment = loan_amount * monthly_interest_rate / (1 - ( 1 + monthly_interest_rate )**-loan_duration_in_months)
puts "Your monthly payment is #{monthly_payment}."