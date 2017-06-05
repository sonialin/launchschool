class Sieve
  def initialize(n)
    @biggest = n
    @markers = {}
    (2..n).to_a.each do |num|
      @markers[num] = false
    end
  end

  def primes
    p1 = 2

    loop do
      n = 2

      loop do  
        product = p1 * n
        break if !@markers.keys.include? product
        @markers[product] = true
        n += 1
      end

      p1 += 1
      if @markers[p1] == false
        multiples_of_p1 = []
        i = 2
        loop do 
          multiples_of_p1 << p1 * i
          i += 1
          break if p1 * i > @biggest
        end
        break if multiples_of_p1.all? {|m| @markers[m] == true}
      end
    end

    @markers.keys.select {|k| @markers[k] == false}
  end
end

s = Sieve.new(1000)
p s.primes