sentence = "Humpty Dumpty sat on a wall."

reversed_sentence = sentence.gsub(/[.]/, '').split(" ").reverse.join(" ")<<(".")

puts reversed_sentence