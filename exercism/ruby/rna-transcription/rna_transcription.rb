class Complement
  VERSION = 1
  DNA_TO_RNA = { 'G' => 'C',
  				 'C' => 'G',
  				 'T' => 'A',
  				 'A' => 'U' }

  def self.of_dna(nucleotide)
  	raise ArgumentError if (/[^GCAT]/ !~ nucleotide) == false
  	rna_compliment = ''
  	nucleotide.each_char { |c| rna_compliment << DNA_TO_RNA[c] }
  	rna_compliment
  end

  def self.of_rna(nucleotide)
  	raise ArgumentError if (/[^CGAU]/ !~ nucleotide) == false
  	dna_compliment = ''
  	nucleotide.each_char { |c| dna_compliment << DNA_TO_RNA.invert[c]}
  	dna_compliment
  end
end