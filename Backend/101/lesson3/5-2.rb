statement = "The Flintstones Rock"

statement_into_array = statement.split('')
character_counter = {}

statement_into_array.each do |x|
  if !character_counter[x]
    character_counter[x] = 1
  else
    character_counter[x] += 1
  end
end

print character_counter