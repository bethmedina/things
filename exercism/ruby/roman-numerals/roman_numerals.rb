class Fixnum
  ROMAN_NUMERALS = { 	
  					 1000 => 'M',
  					  900 => 'CM',
  					  500 => 'D',
  					  400 => 'CD',
  					  100 => 'C',
  					   90 => 'XC',
  					   50 => 'L',
  					   40 => 'XL',
  					   10 => 'X',
   					    9 => 'IX',
   					    6 => 'VI',
   					    5 => 'V',
   					    4 => 'IV',
   					    1 => 'I'
   					}

  def to_roman
    number = self
    roman = ''
    ROMAN_NUMERALS.each do |key, val|
      while number >= key
      	roman << val
      	number -= key
      end
    end
    roman
  end
end