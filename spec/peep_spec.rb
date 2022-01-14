require 'peep'

describe Peep do
    describe '.all' do
        peep = Peep.all
        it 'returns all peeps' do

        expect(peep).to include("peep1")
        expect(peep).to include("peep2")
        expect(peep).to include("peep3")
        end
    end 
end