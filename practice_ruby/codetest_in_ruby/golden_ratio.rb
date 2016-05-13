# Calculate the golden ratio.
# in between 1.61800 and 1.61806
# Given two numbers a and b with a > b > 0, the ratio is b / a.
# Let c = a + b, then the ratio c / b is closer to the golden ratio.
# Let d = b + c, then the ratio d / c is closer to the golden ratio.
# Let e = c + d, then the ratio e / d is closer to the golden ratio.
# If you continue this process, the result will trend towards the golden ratio.
class Ratio
  def self.golden_ratio(a, b)
    ratio = 0
    c = a + b
    golden = Ratio.in_range?(c / b)
    if golden == true
      ratio =  c / b
    else
    
    end
    puts ratio
    ratio
  end

  def self.in_range?(n)
    puts "greater than 1.61800" if n >= 1.61800
    n >= 1.61800 && n <= 1.61806 ? true : false
  end
end

Ratio.golden_ratio(3, 4)
