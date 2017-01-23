def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3

  letter_grade = case 
  when 90 <= average && average <= 100
    'A'
  when 80 <= average && average < 90 
    'B'
  when 70 <= average && average < 80
    'C'
  when 60 <= average && average < 70
    'D'
  when 0 <= average && average < 60
    'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"