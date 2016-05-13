#!/usr/bin/env ruby

# Write a method that takes an array as input and returns the index of the first unique value
arr1 = [1, 9, 2, 3, 4, 2, 1, 5, 3, 4, 9]

def first_unique_value(arr)
  arr.each_with_index do |value, index|
    has_dup = false
    
    first_section = arr.slice(0, index)
    has_dup = true if first_section.detect { |i| i == value }

    last_section = arr.slice(index + 1, arr.length - 1)
    has_dup = true if last_section.detect { |i| i == value }

    return index if has_dup == false
  end
end

puts first_unique_value(arr1)
