# return the fibonacci of n

def fib(n)
  return 1 if n <= 2
  return fib(n-1) + fib(n-2)
end

puts "1st fib is #{fib(1)}"
puts "2nd fib is #{fib(2)}"
puts "3rd fib is #{fib(3)}"
puts "4th fib is #{fib(4)}"
puts "5th fib is #{fib(5)}"
