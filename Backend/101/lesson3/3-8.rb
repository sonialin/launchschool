flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |value, index|
  if value.start_with?("Be")
    puts index
  end
end