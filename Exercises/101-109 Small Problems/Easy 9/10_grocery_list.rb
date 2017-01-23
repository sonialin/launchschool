def buy_fruit(arr)
  grocery_list = []
  arr.each do |item|
    item[1].times do
      grocery_list << item[0]
    end
  end
  grocery_list
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]