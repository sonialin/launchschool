items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  yield(items)
end

gather(items) {|items| puts "Let's start gathering food."}
gather(items) {|items| puts "#{items.join(', ')}"}
gather(items) {|items| puts "Let's start gathering food."}