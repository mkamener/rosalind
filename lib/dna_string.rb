class DNAString

    attr_reader :name, :length

    def initialize(dna_string, name="Rosalind_xxxx")
        @dna_string = dna_string if dna_string.is_a? String
        @dna_string.upcase!
        @name = name
        @length = @dna_string.length
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

    def gc_content
        string = @dna_string.dup
        gc_count = string.split(//).reduce(0) do |sum, char|
            char == "G" || char == "C" ? sum + 1 : sum
        end
        return (gc_count.to_f / @dna_string.length)*100.0
    end

    def [](x)
        return @dna_string[x]
    end

    def hamming_distance(other_string)
        return nil unless other_string.is_a? DNAString
        return nil unless other_string.length == @dna_string.length

        return (0...@dna_string.length).reduce(0) {|sum, x| @dna_string[x] != other_string[x] ? sum + 1 : sum }
    end

    private

    def swap_nucleotide(input, x, y)
        output = input.gsub(x, "+")
        output = output.gsub(y, x)
        return output.gsub("+", y)
    end
end