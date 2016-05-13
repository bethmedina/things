class Prime
  def nth(num)
    raise ArgumentError if num == 0
	  primes = [2]
    return primes.last if num == 1
	  2.upto(num) do |n|
	    primes << next_prime_after(primes.last)
	  end
	  primes.last
  end

  def is_prime?(num)
    return false if num <= 1
  	2.upto(Math.sqrt(num).to_i) do |n|
  	  return false if num % n == 0
  	end
  	true
  end

  def next_prime_after(num)
  	next_prime = num + 1
    next_prime += 1 until is_prime?(next_prime)
    next_prime
  end
end