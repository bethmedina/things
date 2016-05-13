def every_nth(sentence, n, offset)
  words = sentence.split(' ')
  not_using = words[0..(offset-1)]
  words_to_use = words[offset..-1]
  puts "words to use = #{words_to_use}"

  returning = []
  words_to_use.each_with_index do |word, i|
    next if i == 0
    returning << word if (i + 1) % n == 0
  end
  puts returning
  returning
end

# every_nth("This is a sentence", 2, 0)
every_nth("Offset is 3 and this is the rest with every 4th word now", 4, 3)
