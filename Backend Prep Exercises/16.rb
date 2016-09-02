a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

new_array = []

a.each do |word|
  word_into_array = word.split(" ")
  new_array << word_into_array
end

new_array.flatten!

p new_array