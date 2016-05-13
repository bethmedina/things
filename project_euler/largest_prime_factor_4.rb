# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# prime
# evenly divide the number

def is_prime?(x)
  prime = true
  2.upto(x - 1) do |n|
    prime = false if x % n == 0
  end
  prime
end

def largest_prime(num)
  divisibles = (2..(Math.sqrt(num).to_i)).select{ |n| num % n == 0 }
  divisibles.reverse.each do |d|
    return d if is_prime?(d)
  end
end

puts largest_prime(600851475143)
