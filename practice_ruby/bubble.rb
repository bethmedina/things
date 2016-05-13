vals = [4, 3, 5, 0, 1]

previous = vals[0]
current = vals[1]

loop do
  swapped = false

  (vals.length - 1).times do |i|
    if vals[i] > vals[i + 1]
      vals[i], vals[i + 1] = vals[i + 1], vals[i]
      swapped = true
    end
  end
  break if !swapped
end

puts vals
