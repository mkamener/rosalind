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
        expect(dna_string.to_s).to eq string_test
    end

    it 'should output ACCGGGTTTT when asked for the reverse complement of AAAACCCGGT' do
        string_test = "AAAACCCGGT"
        dna_string = DNAString.new(string_test)
        expect(dna_string.reverse_complement).to eq "ACCGGGTTTT"
    end

    it 'should return 70.0 when asked for the GC-content of ATAGCGCGCG' do
        string_test = "ATAGCGCGCG"
        dna_string = DNAString.new(string_test)
        expect(dna_string.gc_content).to eq 70.0
    end

    it 'should return 60.919540 when asked for the GC-content of a longer string' do
        string_test = "CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGACTGGGAACCTGCGGGCAGTAGGTGGAAT"
        dna_string = DNAString.new(string_test)
        expect(dna_string.gc_content).to be_within(0.001).of(60.919540)
    end

    it 'should have name "Test_name_1234" when initialized with that name' do
        name = "Test_name_1234"
        dna_string = DNAString.new("ACTG", name)
        expect(dna_string.name).to eq name
    end

    it 'should return the value of 7 when the following dna_strings are compared for hamming distance' do
        dna_string1 = DNAString.new("GAGCCTACTAACGGGAT")
        dna_string2 = DNAString.new("CATCGTAATGACGGCCT")
        expect(dna_string1.hamming_distance(dna_string2)).to eq 7
    end
end
