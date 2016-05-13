# Write a function that sorts the keys in a hash by the length of the key as a string. For instance, the hash:
#
# { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
# should result in:
#
# ["abc", "4567", "another_key"]

def keys_by_length(thing)
  thing.keys.map(&:to_s).sort_by(&:length)
end

puts keys_by_length({ abc: 'hello', 'another_key' => 123, 4567 => 'third' })
