class SecretHandshake
  HANDSHAKES = {10000 => "reverse", 1000 => "jump", 100 => "close your eyes", 
                10 => "double blink", 1 => "wink"}

  def initialize(input)
    @input = input
  end

  def commands
    if @input.kind_of? String
      to_handshake @input
    else
      to_handshake @input.to_s(2)
    end
  end

  def to_handshake(b)
    number = b.to_i
    reverse_handshakes = false
    handshakes = []

    HANDSHAKES.each do |key, value|
      if number / key == 1
        if key == 10000
          reverse_handshakes = true
        else
          handshakes.unshift(value)
        end
        number -= key
      end
    end

    if reverse_handshakes
      handshakes.reverse
    else
      handshakes
    end
  end
end