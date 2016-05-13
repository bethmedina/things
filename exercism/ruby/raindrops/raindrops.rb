require 'prime'

class Raindrops
  def self.convert(n)
  	prime_factors = []
  	rain = ''
  	(1..n).each { |x| prime_factors.push x if (n % x == 0) && Prime.prime?(x) }
  	rain << "Pling" if prime_factors.include?(3)
  	rain << "Plang" if prime_factors.include?(5)
  	rain << "Plong" if prime_factors.include?(7)
  	rain.empty? ? n.to_s : rain
  end
end