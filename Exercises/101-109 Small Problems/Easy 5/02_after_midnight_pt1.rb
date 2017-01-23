def min_to_hr_n_min(min)
  arr = min.divmod(60)
  [arr[0] % 24, arr[1]]
end

def format_time(digit)
  if digit.length == 1
    "0" + digit
  else
    digit
  end
end

def time_of_day(min)
  if min == 0
    "00:00"
  elsif min > 0
    format_time(min_to_hr_n_min(min)[0].to_s) + ":" + format_time(min_to_hr_n_min(min)[1].to_s)
  else
    min *= -1
    if min_to_hr_n_min(min)[1] > 0
      format_time((23 - min_to_hr_n_min(min)[0]).to_s) + ":" + format_time((60 - min_to_hr_n_min(min)[1]).to_s)
    else
      format_time((24 - min_to_hr_n_min(min)[0]).to_s) + ":" + "00"
    end
  end
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"