flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}

flintstones.each_with_index do |val,index|
  flintstones_hash[val] = index
end

p flintstones_hash