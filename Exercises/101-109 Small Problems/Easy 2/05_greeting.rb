puts "What is your name?"
input = gets.chomp

if input.chars.pop == "!"
  name = input.slice(0, input.size - 1)
  puts "HELLO " + name.upcase + ". WHY ARE WE SCREAMING?"
else
  puts "Hello " + input + "."
end
