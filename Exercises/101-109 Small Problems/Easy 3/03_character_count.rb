print "Please write word or multiple words: "
str = gets.chomp

num_chars = str.size - str.count(" ")
puts "There are #{num_chars} characters in \"#{str}\"."