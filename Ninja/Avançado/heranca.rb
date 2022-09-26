class Veiculo
  attr_accessor :nome, :marca, :modelo, :roda

  def initialize(nome, marca, modelo,roda)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
    self.roda = roda
  end

  def ligar
    puts "#{nome} Esta pronto para iniciar o trajeto."
  end

  def buzinar
    puts "#{nome} Bibi Fonfon"
  end
end

class Carro < Veiculo
  def dirigir
    puts "#{nome} Iniciando o trajeto "
  end
end

class Moto < Veiculo
  def pilotar
    puts "#{nome} Iniciando trajeto"
  end
end

civic = Carro.new('Civic', 'Honda', 'SI', '17' )
civic.ligar

lancer = Carro.new('lancer', 'Mitsubishi', 'Evolution','18')
lancer.buzinar

lancer.dirigir

fazer = Moto.new('Fazer', 'Yamaha', '250X', '17')
fazer.ligar
fazer.buzinar
fazer.pilotar

cbr = Moto.new('CBR', 'Honda', 'FireBlade', '17')
cbr.ligar
cbr.buzinar
cbr.pilotar
