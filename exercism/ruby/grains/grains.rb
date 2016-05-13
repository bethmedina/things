class Grains
  def self.square(num)
  	grains = {1 => 1}
  	2.upto(num) do |s|
  	  grains[s] = grains[s - 1] * 2
  	end
  	grains[num]
  end

  def self.total
  	total = 0
  	1.upto(64) do |s|
  	  total += Grains.square(s)
  	end
  	total
  end
end