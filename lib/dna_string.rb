class DNAString
    def initialize(dna_string)
        @dna_string = dna_string if dna_string.is_a? String
        @dna_string.upcase!
    end

    def count
        a_count = @dna_string.count("A")
        c_count = @dna_string.count("C")
        g_count = @dna_string.count("G")
        t_count = @dna_string.count("T")
        
        return "#{a_count} #{c_count} #{g_count} #{t_count}"
    end
end
