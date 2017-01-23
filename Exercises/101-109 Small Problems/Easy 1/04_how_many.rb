vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(items)
  item_count = {}

  items.each do |item|
    if item_count[item]
      item_count[item] += 1
    else
      item_count[item] = 1
    end  
  end
  
  item_count.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)