module FASTAParser
    class FASTABlock
        def self.parse(input)
            name = input[0]
            string = input.slice(1..-1).join("")
            return DNAString.new(string, name)
        end
    end
    
    def self.parse_file(file)
        @dna_array = []
        input = File.read(file)

        input = input.split(">")

        input.each do |x|
            x = x.split("\n")
            @dna_array.push(FASTABlock.parse(x)) unless x.length < 2
        end
        return @dna_array
    end
end