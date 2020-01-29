
class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end



    def put(avenger)
        #puts self.list.class
        self.list.push(avenger)
    end 
    
end

#TDD - desenvolvimento guiado por testes
describe AvengersHeadQuarter do
    
    it 'Deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
        # pode colcoar o include para comparar com a string
    end 

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0

        expect(hq.list.size).to be > 0
        expect(res).to be true

    end

    it 'thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        expect(hq.list).to start_with('Thor')
    end

    it 'Ironman deve ser o ultimo da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Elaine/)

    end

end