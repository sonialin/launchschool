def divisors(n)
  remainers = (1..n).to_a.map {|e| n % e}
  new_arr = []
  remainers.each_with_index do |r, index|
    new_arr << index + 1 if r == 0
  end
  new_arr
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute