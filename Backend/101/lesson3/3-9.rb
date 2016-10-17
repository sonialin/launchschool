flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

new_array = []

flintstones.map! do |x|
  x[0, 3]
end

puts flintstones