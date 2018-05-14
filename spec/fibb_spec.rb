require 'fibb'

describe Fibb do
    it 'should output 19 when asking for the 5th term with k = 3' do
        expect(Fibb.at_n(5, 3)).to eq 19
    end
end
