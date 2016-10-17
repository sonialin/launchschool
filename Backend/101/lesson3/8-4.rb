def generate_uuid
  letters_and_digits = []
  (0..9).each {|x| letters_and_digits << x}
  ('a'..'z').each {|x| letters_and_digits << x}
  uuid = ''
  8.times {uuid << letters_and_digits.sample.to_s}
  uuid << '-'
  4.times {uuid << letters_and_digits.sample.to_s}
  uuid << '-'
  4.times {uuid << letters_and_digits.sample.to_s}
  uuid << '-'
  4.times {uuid << letters_and_digits.sample.to_s}
  uuid << '-'
  12.times {uuid << letters_and_digits.sample.to_s}
  return uuid   
end

puts generate_uuid