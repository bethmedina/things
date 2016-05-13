class Bob
  def initialize
  end

  def hey(remark)
  	case 
  	when remark == remark.upcase && remark =~ /[a-zA-Z]/
  	  "Whoa, chill out!"
  	when remark[-1] == "?"
  	  "Sure."
  	when remark =~ /\A\s*\z/
  	  "Fine. Be that way!"
  	else
  	  "Whatever."
  	end
  end
end