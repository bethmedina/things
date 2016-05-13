# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
def check_triplet(a, b)
  c = Math.sqrt((a ** 2) + (b ** 2))
  c.to_int == c ? true : false
end

def sum_triplet(a, b)
  c = Math.sqrt((a ** 2) + (b ** 2)).to_int
  a + b + c
end

product = 0

3.upto(1000) do |a|
  (a + 1).upto(1000) do |b|
    if check_triplet(a, b) && (sum_triplet(a, b) == 1000)
      product = a * b * (Math.sqrt((a ** 2) + (b ** 2)).to_int)
    end
  end
end

puts product
