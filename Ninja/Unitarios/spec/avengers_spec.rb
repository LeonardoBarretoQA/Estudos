class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end

end



describe AvengersHeadQuarter do

    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new
        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end
    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('homem de ferro')
        hq.put('Leonardo')
        expect(hq.list).to include 'Leonardo'
    end

    it 'Thor deve ser o Primeiro da list' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('homem de ferro')
        hq.put('Leonardo')
        expect(hq.list).to end_with('Leonardo')
    end

    it 'Deve conter o sobrenome' do
avenger = 'Peter Parker'

expect(avenger).to match(/Parker/)
    end
end




