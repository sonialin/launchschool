def remove_vowels(arr)
  new_arr = arr.map do |substr|
    substr.delete("aeiou")
    substr.delete("AEIOU")
  end
  new_arr
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
puts remove_vowels(%w(green YELLOW black white))
puts remove_vowels(%w(ABC AEIOU XYZ))