puts "Please enter a number to count down from:"

number = gets.chomp.to_i

def countdown(num)
  puts num
  if num>0
    num = num - 1
    countdown(num)
  end
end

countdown(number)

