# DNA

# def dna_count(str="AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

# 	dna = {:A => 0, :C => 0, :G => 0, :T => 0}
# 	dna[:A] = str.count('A')
# 	dna[:C] = str.count('C')
# 	dna[:G] = str.count('G')
# 	dna[:T] = str.count('T')

# 	return "#{dna[:A]} #{dna[:C]} #{dna[:G]} #{dna[:T]}"
# end


#dna = dna_count(str = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

#puts dna

# def replace_acid(dna="GATGGAACTTGACTACGTAAATT")
# 	dna.upcase.gsub(/T/, 'U')
# end

#puts replace_acid('GATGGAACTTGACTACGTAAATT')

# 1. sort  AAAACCCGGT => ACCGGGTTTT
# def reverse_complement(dna="AAAACCCGGT")
# 	proteins = {:A => 'T', :C => 'G', :G => 'C', :T => 'A'}
# 	protein = dna.upcase.each_char.map {|char|
# 				proteins[char.to_sym]
# 			}.join.reverse
# end

#puts reverse_complement(dna="AAAACCCGGT")


# 1. Find differences
# def hamming_distance(chain1="GAGCCTACTAACGGGAT", chain2="CATCGTAATGACGGCCT")
# 	diff = 0
# 	i = 0
# 	# while (i < chain1.length)
# 	# 	if (chain1[i] != chain2[i])
# 	# 		diff += 1
# 	# 	end
# 	# 	i += 1
# 	# end
# 	diff
# end

# puts hamming_distance(chains1="GAGCCTACTAACGGGAT", chain2="CATCGTAATGACGGCCT")