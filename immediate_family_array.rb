family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

new_hash = family.select { |key, value| key == :sisters || key == :brothers }
new_array = new_hash.values.flatten
p new_array