class Phrase
  VERSION = 1

  def initialize(phrase)
  	@phrase = phrase.downcase.split(/[\s,,]/).each do |word|
  	  word.gsub!(/[^0-9A-Za-z']|\A'|'\Z/, '')
  	end
  end

  def word_count
  	{}.tap do |words|
  	  @phrase.each do |word|
  	  	next if word == ''
  	  	count = @phrase.count(word)
  	  	words[word] = count
  	  end
  	end
  end
end