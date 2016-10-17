ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_min = {}

ages.each do |key, value|
  if value == ages.values.min
    ages_min = {key => value}
  end
end

puts ages_min

