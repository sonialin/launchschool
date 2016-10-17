# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

def append_rutabaga_to_string(some_string)
  some_string << "rutabaga"
end

def append_rutabaga_to_array(some_array)
  some_array << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
append_rutabaga_to_string(my_string)
append_rutabaga_to_array(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

