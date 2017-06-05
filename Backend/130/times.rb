def times(n)
  i = 0
  loop do
    yield(i)
    i += 1
    break if i == n
  end
  n
end

times(5) do |num|
  puts num
end