class ContaCorrente
    attr_accessor :saldo

    def initialize(saldo)
        self.saldo = saldo
        
    end

    def saca(valor)
        self.saldo = saldo
        
    end

end


describe ContaCorrente do
    
    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do #metodo no contexto
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(200) #@ instancia o metodo
            end
            it 'então atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end
    end

end