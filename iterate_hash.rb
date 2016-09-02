def print_keys(h)
  h.keys.each do |k| 
    p k
  end
end

def print_values(h)
  h.values.each do |v| 
    p v
  end
end

def print_keys_and_values(h)
  h.each do |k, v| 
    p "#{k} #{v}"
  end
end

hash = {firstname: "Sonia",
        lastname: "Lin",
        city: "Chicago",
        zipcode: "60626",
        state: "IL"
        }

print_keys(hash)
print_values(hash)
print_keys_and_values(hash)