def triangle(n)
  num_of_spaces = n - 1
  num_of_stars = 1
  n.times do
    puts " " * num_of_spaces + "*" * num_of_stars
    num_of_spaces -= 1
    num_of_stars += 1
  end
end

triangle(5)
triangle(9)