require_relative '../../app/bank'

describe ContaPoupanca do
  describe 'Saque' do
    context 'Quando o valor é positivo' do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)

        @cp.saca(200.00)
      end

      it 'Então atulaiza o Saldo' do
        expect(@cp.saldo).to eql(798.00)
      end
    end

    context 'Quanto o saldo é insuficiente' do
      before(:all) do
        @cp = ContaPoupanca.new(0.00)

        @cp.saca(100.00)
      end

      it 'Então exibe mensagem' do
        expect(@cp.mensagem).to eql 'Saldo insuficiente para saque'
      end

      it 'E o  saldo permanece com zeros' do
        expect(@cp.saldo).to eql 0.00
      end
    end

    context 'Quanto o saldo é insuficiente' do
      before(:all) do
        @cp = ContaPoupanca.new(100.00)

        @cp.saca(101.00)
      end

      it 'Então exibe mensagem' do
        expect(@cp.mensagem).to eql 'Saldo insuficiente para saque'
      end

      it 'E o saldo permanece ' do
        expect(@cp.saldo).to eql 100.00
      end
    end

    context 'Quando supera o limite de saque' do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)

        @cp.saca(501.00)
      end

      it 'Então exibe mensagem' do
        expect(@cp.mensagem).to eql 'Limite maximo para saque é 500'
      end

      it 'E o saldo permanece' do
        expect(@cp.saldo).to eql 1000.00
      end
    end
  end
end
