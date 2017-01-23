def get_sum(i)
  sum = 0
  (1..i).each do |n|
    sum += n
  end
  sum 
end

def get_product(i)
  product = 1
  (1..i).each do |n|
    product *= n
  end
  product
end

puts "Please enter an integer greater than 0:"
input = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
op = gets.chomp
if op == 's'
  puts "The sum of the integers between 1 and " + input.to_s + " is " + get_sum(input).to_s + "."
else 
  puts "The product of the integers between 1 and " + input.to_s + " is " + get_product(input).to_s + "."
end

