def after_midnight(time)
  if time == '00:00'
    0
  else
    (time.slice(0, 2).to_i * 60 + time.slice(3, 5).to_i) % 1440
  end
end

def before_midnight(time)
  if time == '00:00'
    0
  else
    (1440 - (time.slice(0, 2).to_i * 60 + time.slice(3, 5).to_i)) % 1440
  end
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
