class PerfectNumber
  def self.classify(n)
    raise RuntimeError if n <= 0
    sum = (1...n).select {|x| n % x == 0}.inject(:+)
    case
      when sum < n then 'deficient' 
      when sum == n then 'perfect' 
      when sum > n then 'abundant' 
    end
  end
end