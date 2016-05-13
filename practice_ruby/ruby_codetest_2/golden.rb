# Calculate the golden ratio.
# in between 1.61800 and 1.61806
# Given two numbers a and b with a > b > 0, the ratio is b / a.
# Let c = a + b, then the ratio c / b is closer to the golden ratio.
# Let d = b + c, then the ratio d / c is closer to the golden ratio.
# Let e = c + d, then the ratio e / d is closer to the golden ratio.
# If you continue this process, the result will trend towards the golden ratio

# check ratio btw 1.61800 and 1.61806
# add numbers together and check ratio

def golden_ratio(a, b)
  if a > b
    x = b
    y = a
  else
    x = a
    y = b
  end

  ratio = (y / x).round(5)
  puts "first ratio = #{ratio}"

  if check_ratio(ratio)
    ratio
  else
    check_ratio(y / (x + y)) ? ratio : golden_ratio(y, x + y)
  end
  ratio
end

def check_ratio(ratio)
  (ratio >= 1.61800) && (ratio <= 1.61806) ? true : false
end

# puts golden_ratio(2, 3.23602)
puts golden_ratio(4, 2)
