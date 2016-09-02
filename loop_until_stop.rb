puts "Please type in anything to start the program: "

string = gets.chomp

while string != "STOP"
  puts "Running"
  puts "Type in 'STOP' to stop the program, or anything else to continue:"
  string = gets.chomp
end