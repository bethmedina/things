class Hamming
  VERSION = 1
  
  def self.compute(first, second)
  	raise(ArgumentError) if first.length != second.length
  	n = 0
  	count = 0
  	first.each_char do |c|
  	  count += 1 if c != second[n] 
  	  n += 1
  	end
  	count
  end
end