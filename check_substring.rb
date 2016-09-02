array = ["laboratory",
        "experiment",
        "Pans Labyrinth",
        "elaborate",
        "polar bear"]

array.each do |word|
  if /lab/.match(word)
    puts word
  end
end