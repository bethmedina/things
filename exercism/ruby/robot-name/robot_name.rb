class Robot
  attr_accessor :name

  def initialize
  	@name = robot_name
  end

  def robot_name
  	alpha = (0..1).map { (65 + rand(26)).chr }.join
  	numeric = rand(100...999).to_s
  	alpha + numeric
  end

  def reset
  	initialize
  end
end