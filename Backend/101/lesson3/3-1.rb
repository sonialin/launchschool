ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# option 1
if ages["Spot"]
  puts "Spot is in the hash"
else
  puts "Spot is not in the hash"
end

# option 2
if_spot = false
ages.each do |key, value|
  if key == "Spot"
    puts "#{ages["Spot"]}"
    if_spot = true
  end
end
if if_spot == true
  puts "Spot is in the hash"
else
  puts "Spot is not in the hash"
end

# option 3
spot = ages.assoc("Spot")
if spot.nil?
  puts "Spot is not in the hash"
else 
  puts "Spot is in the hash"
end