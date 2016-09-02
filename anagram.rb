words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

hash_of_anagrams = {}

words.each do |word|
  word_into_array_key = word.split('').sort
  if hash_of_anagrams.has_key?(word_into_array_key)
    hash_of_anagrams[word_into_array_key] << word
  else 
    hash_of_anagrams[word_into_array_key] = [word]
  end
end

p hash_of_anagrams.values