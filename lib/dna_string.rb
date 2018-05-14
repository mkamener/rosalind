class DNAString
    def initialize(dna_string)
        @dna_string = dna_string if dna_string.is_a? String
        @dna_string.upcase!
    end

    def to_s
        return @dna_string
    end

    def count
        a_count = @dna_string.count("A")
        c_count = @dna_string.count("C")
        g_count = @dna_string.count("G")
        t_count = @dna_string.count("T")
        
        return "#{a_count} #{c_count} #{g_count} #{t_count}"
    end

    def to_RNA
        return @dna_string.gsub("T", "U")
    end

    def reverse_complement
        output = @dna_string.dup
        
        output = swap_nucleotide(output, "A", "T")
        output = swap_nucleotide(output, "C", "G")

        return output.reverse
    end

    private

    def swap_nucleotide(input, x, y)
        output = input.gsub(x, "+")
        output = output.gsub(y, x)
        return output.gsub("+", y)
    end
end