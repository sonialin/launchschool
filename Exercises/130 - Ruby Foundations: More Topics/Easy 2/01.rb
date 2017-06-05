def step(first, last, step_value)
  i = first
  loop do
    yield(i)
    i += step_value
    break if i > last
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }