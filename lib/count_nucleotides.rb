module CountNucleotides
    def CountNucleotides.count(dna_string)
        return "" unless dna_string.is_a? String
        dna_string.upcase!
        a_count = dna_string.count("A")
        c_count = dna_string.count("C")
        g_count = dna_string.count("G")
        t_count = dna_string.count("T")
        
        return "#{a_count} #{c_count} #{g_count} #{t_count}"
    end
end
