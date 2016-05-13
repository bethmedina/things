class FoodChain
  VERSES = { 
  	'fly' => "I don't know why she swallowed the fly. Perhaps she'll die."
  	'spider' => "It wriggled and jiggled and tickled inside her!",
  	'bird' => "How absurd to swallow a bird!",
  	'cat' => "Imagine that, to swallow a cat!",
  	'dog' => "What a hog, to swallow a dog!",
  	'goat' => "Just opened her throat and swallowed a goat!",
  	'cow' => "I don't know how she swallowed a cow!",
  	'horse' => "She's dead, of course!"
  }
  def song
  	formatting
  end

  def formatting
  	verses = 1
  	VERSES.length.times do 
  	  puts "I know an old lady who swallowed a #{VERSES.key}."	
  	end
  	VERSES.each do |key, value|
  	  
  	end
  end
end