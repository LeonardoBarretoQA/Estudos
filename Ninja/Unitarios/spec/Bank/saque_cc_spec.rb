require_relative '../../app/bank'

describe ContaCorrente do
  describe 'Saque' do
    context 'Quando o valor é positivo' do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(200.00)
      end
      it 'Então atulaiza o Saldo' do
        expect(@cc.saldo).to eql(795.00)
      end
    end

    context 'Quanto o saldo é insuficiente' do
      before(:all) do
        @cc = ContaCorrente.new(0.00)
        @cc.saca(100.00)
      end
      it 'Então exibe mensagem' do
        expect(@cc.mensagem).to eql 'Saldo insuficiente para saque'
      end
      it 'E o  saldo permanece com zeros' do
        expect(@cc.saldo).to eql 0.00
      end
    end

    context 'Quanto o saldo é insuficiente' do
      before(:all) do
        @cc = ContaCorrente.new(100.00)
        @cc.saca(101.00)
      end
      it 'Então exibe mensagem' do
        expect(@cc.mensagem).to eql 'Saldo insuficiente para saque'
      end
      it 'E o saldo permanece ' do
        expect(@cc.saldo).to eql 100.00
      end
    end

    context 'Quando supera o limite de saque' do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(701.00)
      end
      it 'Então exibe mensagem' do
        expect(@cc.mensagem).to eql 'Limite maximo para saque é 700'
      end
      it 'E o saldo permanece' do
        expect(@cc.saldo).to eql 1000.00
      end
    end
  end
end
