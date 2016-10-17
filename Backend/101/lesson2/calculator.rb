def prompt(msg)
  puts "=> #{msg}"
end

prompt('Welcome to the calculator application.')
instruction_prompt = <<-msg
The application takes in two numbers from you,
   and does an operation of your pick on them.
msg

prompt(instruction_prompt)

loop do
  num1 = nil
  loop do
    prompt('Now enter the 1st number:')
    num1 = gets.chomp.to_i
    break if num1.nonzero?
    prompt('This is not a valid number.')
  end

  num2 = nil
  loop do
    prompt('Now enter the 2nd number:')
    num2 = gets.chomp.to_f
    break if num2.nonzero?
    prompt('This is not a valid number.')
  end

  operator_prompt = <<-msg
  Now type in a number from 1 to 4 to select an operation.
      1)Addition
      2)Substraction
      3)Multiplication
      4)Division
  msg

  operation = nil
  loop do
    prompt(operator_prompt)
    operation = gets.chomp.to_i
    break if operation.between?(1, 4)
    prompt('This is not a valid number between 1 to 4.')
  end

  result =  case operation
            when 1
              num1 + num2
            when 2
              num1 - num2
            when 3
              num1 * num2
            when 4
              num1 / num2
            end

  prompt("The computed result is #{result}.")
  prompt("Would you like to do another calculation? Type Y for yes.")
  if_continue = gets.chomp.downcase
  unless if_continue.start_with?('y')
    prompt("Thank you for using the calculator application. Goodbye!")
    break
  end
end
