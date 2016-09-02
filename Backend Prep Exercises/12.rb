contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.each_with_index do |(key, value), index|
  personal_info = {email: "", address: "", phone_number: ""}
  personal_info.each_with_index do |(k, v), i|
    personal_info[personal_info.keys[i]] = contact_data[index][i]
  end
  contacts[contacts.keys[index]] = personal_info
end

puts contacts
