# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product
  palindromes = []

  999.downto(100) do |x|
    999.downto(100).each do |y|
      if (x * y).to_s == (x * y).to_s.reverse
        palindromes << x * y
      end
    end
  end
  palindromes.max
end


puts largest_palindrome_product
