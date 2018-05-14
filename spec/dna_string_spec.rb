require 'dna_string'

describe DNAString do
    it 'should return 20 12 17 21 when given the test string as input' do
        string_test = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
        dna_string = DNAString.new(string_test)
        expect(dna_string.count).to eq "20 12 17 21"
    end

    it 'should correctly subsitute T with U when outputting to RNA' do
        string_test = "GATGGAACTTGACTACGTAAATT"
        dna_string = DNAString.new(string_test)
        expect(dna_string.to_RNA).to eq "GAUGGAACUUGACUACGUAAAUU"
    end

    it 'should output the DNA string with the to_s method' do
        string_test = "GATGGAACTTGACTACGTAAATT"
        dna_string = DNAString.new(string_test)
        expect(dna_string.to_str).to eq string_test
    end
end
