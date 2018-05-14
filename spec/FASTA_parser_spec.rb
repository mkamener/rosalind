require 'FASTA_parser'
require 'dna_string'

describe FASTAParser do
    before(:each) do
        file = "./spec/FASTAParser_test.txt"
        @output = FASTAParser.parse_file(file)
    end

    it 'should load the test file and return an array of 3 elements' do
        expect(@output.length).to be 3
    end

    it 'should return an array with the elements of type dna_string' do
        expect(@output).to all(be_a(DNAString))
    end

    it 'should set the name of the output correctly' do
        expect(@output[2].name).to eq "Rosalind_0808"
    end

    it 'should set the dna_string of the output correctly' do
        expect(@output[2].to_s).to eq "CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGACTGGGAACCTGCGGGCAGTAGGTGGAAT"
    end
end