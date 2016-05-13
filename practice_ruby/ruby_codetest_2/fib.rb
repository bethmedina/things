# Return the Fibonacci of n


def fib(n)
  return 1 if n <= 2
  fib(n-1) + fib(n-2)
end

puts fib(777)
