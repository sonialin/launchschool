def fizzbuzz(n1, n2)
  a = []
  (n1..n2).to_a.each do |n|
    if n % 15 == 0
      a << "FizzBuzz"
    elsif n % 5 == 0
      a << "Buzz"
    elsif n % 3 == 0
      a << "Fizz"
    else
      a << n
    end  
  end
  p a
end

fizzbuzz(1, 15)