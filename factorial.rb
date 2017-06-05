def factorial(x)
  product = 1

  while x > 0 do
    product *= x
    x -= 1
  end

  return product
end

Kernel.puts factorial(5)
Kernel.puts factorial(6)
Kernel.puts factorial(7)
Kernel.puts factorial(8)