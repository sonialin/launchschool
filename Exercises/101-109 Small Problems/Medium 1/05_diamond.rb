def diamond(n)
  a = []
  num_of_stars = 1
  spaces = (n - 1) / 2
  1.upto(n/2) do |i|
    a << " " * spaces + "*" * num_of_stars + " " * spaces
    num_of_stars += 2
    spaces -= 1
  end
  puts a
  puts "*" * n
  puts a.reverse
end

diamond(9)
diamond(25)
diamond(5)