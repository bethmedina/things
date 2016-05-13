# parameters are sentence, n & offset
# break sentence into 2 parts at the offset
# get every nth word from the 2nd parts
# put the 2 parts together

def every_nth(sentence, n, offset)
  words = sentence.split(" ")
  first_part = words[0..offset - 1]
  last_part = words[offset..-1]
  every_nth = []

  last_part.each_with_index do |word, i|
    every_nth << word if ((i + 1) % n == 0) && (i > 0)
  end
  
  puts (first_part + every_nth).join(" ")
  (first_part + every_nth).join(" ")
end

every_nth("This is a really long sentence with a lot of words in it", 2, 3)
every_nth("Here is another one to try out", 3, 1)
