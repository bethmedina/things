# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_dif(n)
  square_of_sums(n) - sum_of_squares(n)
end

def sum_of_squares(n)
  (1..n).inject(0) { |r, e| r + (e ** 2) }
end

def square_of_sums(n)
  ((1..n).inject(0) { |r, e| r + e }) ** 2
end

puts sum_square_dif(100)
