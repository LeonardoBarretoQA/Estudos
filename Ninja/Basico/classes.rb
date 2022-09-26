class Carro
 attr_accessor :nome

    def Ligar
puts 'O carro está pronto para iniciar o trajeto'
end
end

civic = Carro.new
civic.nome = 'Civic'

puts civic.nome
civic.Ligar
