def toggle_lights(n)
  lights = {}
  1.upto(n) do |i|
    lights[i] = 1
  end
  lights
  2.upto(n) do |i|
    i.upto(n) do |j|
      if j % i == 0
        if lights[j] == 1
          lights[j] = 0
        else
          lights[j] = 1
        end
      end
    end
  end
  
  lights_on = lights.select {|k, v| v == 1}
  [lights_on.size, lights_on.keys]
end

puts toggle_lights(10) == [3, [1, 4, 9]]
puts toggle_lights(5) == [2, [1, 4]]
p toggle_lights(1000)
