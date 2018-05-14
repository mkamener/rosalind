require 'count_nucleotides'

describe CountNucleotides do
    string_test = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
    it 'should return 20 12 17 21 when given the test string as input' do
        expect(CountNucleotides.count(string_test)).to eq "20 12 17 21"
    end
end
