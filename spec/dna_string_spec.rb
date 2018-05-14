require 'dna_string'

describe DNAString do
    string_test = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
    it 'should return 20 12 17 21 when given the test string as input' do
        dna_string = DNAString.new(string_test)
        expect(dna_string.count).to eq "20 12 17 21"
    end
end
