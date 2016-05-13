# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# safe to assume we can start at least at 2520
# start at max * max

def smallest_multiple(max)
  num = max * max
  until (1..max).all? { |n| num % n == 0 }
    num += max
  end
  num
end

puts smallest_multiple(20)
