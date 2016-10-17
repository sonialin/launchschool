def factors(number)
  unless number <= 0
    dividend = number
    divisors = []
    begin
      divisors << number / dividend if number % dividend == 0
      dividend -= 1
    end until dividend == 0
    divisors
  end
end


puts factors(0)
puts factors(-15)