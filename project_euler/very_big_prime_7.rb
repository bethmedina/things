# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

require 'prime'

def prime_of(n)
  primes = Prime.first n
  primes.last
end

puts "the prime of 6 is #{prime_of(6)}"
puts "the prime of 10001 is #{prime_of(10001)}"
