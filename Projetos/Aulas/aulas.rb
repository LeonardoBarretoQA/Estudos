
day = 'Sunday'

if day == 'Sunday'
    lunch = 'special'
end

puts "lunch is #{lunch} Today"



day = 'Saturday'

if day == 'Sunday' 
    lunch = 'special'

else lunch = 'normal'
end

puts "Lunch is #{lunch} today !"

day = 'Holiday'

if day == 'Sunday'
    lunch = 'special'
elsif day == 'Holiday'
    lunch = 'later'
else lunch = 'normal'
end

puts "Lunch is #{lunch} Today!"

product_status = 'closed'
unless product_status == 'open'
    check_change = 'can'
else 
    check_change = 'can not'
end

puts "You #{check_change} Change the product"


puts 'Digite o número do mês que você nasceu?'
month = gets.chomp.to_i
case month 
when 1..3
  puts 'Você nasceu no começo do ano'
when 4..6
  puts 'Você nasceu na primeira metade do ano'
when 7..9
  puts 'Você nasceu na segunda metade do ano'
when 9..12 
  puts 'Você masceu no final do ano'
else 
  puts 'Não foi possível identificar'
end


fruits = ['Maça', 'Uva', 'Morango']
for fruit in fruits 
    puts fruit
end 


x = 1 
while x < 10
    puts x
#adiciona +1 ao valor de X
    x += 1
end


count = 1
loop do
    puts count 
    break if count == 10
    #incrementa a variável count 
    count += 1
end

10.times do 
    puts "SOU FODA"
end



result = ''
loop do
    puts result
    puts 'Selecione uma das seguintes opções'
    puts '1- Descobrir a idade de uma pessoa'
    puts '0- Sair'
    print 'Opção '

    option =gets.chomp.to_i

    if option == 1
        print 'Digite o ano de nascimento:  '
        year_of_birth = gets.chomp.to_i
        print 'Digite o ano atual:  '
        current_year = gets.chomp.to_i
        age = current_year - year_of_birth 
        result = "Quem nasceu no ano de #{year_of_birth} , tem #{age} anos em #{current_year}"
    elsif option == 0
        break
    else 
        result = 'Opção inválida'
    end
    # Comando que limpa o console
    system "clear"
end




resultado = ''
loop do
puts  = resultado
    puts 'Deseja iniciar o uso da calculadora?'
    puts 'Digite + = Para Somar'
    puts 'Digite - = Para subtrair'
    puts 'Digite / = Para Dividir'
    puts 'Digite * = Para Multiplicar'
    puts 'Digite 0 = Para cancelar'

    print 'Opção: '
     opcao =gets.chomp
    if opcao == '+'
    print 'Digite qual número deseja somar:  '
    numero1 = gets.chomp.to_i
    print "Digite qual número deseja somar com número #{numero1}+"
     numero2 = gets.chomp.to_i
     soma = numero1 + numero2   
     puts "O Total das soma do número:#{numero1}+#{numero2} =#{soma} "
      
  
     elsif opcao == '-'
      print 'Digite qual número deseja diminuir; '
      numero1 = gets.chomp.to_i
      print "Digite qual número deseja diminuir com o número #{numero2}: "
      numero2 = gets.chomp.to_i
      subtracao = numero1 - numero2
      puts "O total da subtração do números:#{numero1}-#{numero2} =#{subtracao} "
      

      elsif opcao == '/'
        print 'Digite qual número deseja dividir: '
        numero1 = gets.chomp.to_f
        print "Digite qual número deseja dividir com o número #{numero2}: "
        numero2 = gets.chomp.to_f
        divisao = numero1 / numero2
        puts "O total da divisão do números: #{numero1}/#{numero2} =#{divisao} "
      
          elsif opcao == '*'
          print 'Digite qual o número deseja multiplicar:'
          numero1 = gets.chomp.to_i
          print "Digite qual número deseja multiplicar pelo número#{numero1}: "
          numero2 = gets.chomp.to_i
          multiplicacao = numero1 * numero2
          puts "O total da multiplicação dos números: #{numero1}*#{numero2} =#{multiplicacao}"
          puts ''


        elsif opcao == '0'
          
              puts 'Calculadora fechada com sucesso !!!'
break

      end

   end



 names = ['Joaãozinho', 'Manoel','Juca']

 name ='Leonardo Barreto'
 names.each do | name |
    puts name
 end
 puts name
   
 

aulas = {'Aula 1'=> 'Liberada' , 'Aula 2'=> 'Liberada', 'Aula 3'=> 'Liberada', 'Aula 4'=> 'Liebrada', 'Aula 5'=> 'Em breve'}
aulas.each do | key, value |
   puts "#{key} #{value}"
end


array = [1, 2, 3, 4]
puts "\n Executando .map multiplicando cada item por 2"
new_array = array.map do |a|
    a * 2
end
puts "\n Array Original"
puts "#{array}"
puts "\n Novo Array"
puts "#{new_array}"

puts "\n Executando .map! multiplicando cada item por 2"
array.map do |a|
    a * 2
end
puts "\n Array Original"
puts "#{new_array}"
puts ''//

array = [1, 2, 3, 4, 5, 6]
selection = array.select do |a|
    a >= 4
end
 puts selection


hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}
puts 'Selecionando  keys com valor maior que 0'
selection_key = hash.select do | key, value |
    key > 0
end
puts selection_key//


def talk
   puts "Olá, como você está?"
end
talk


def talk(first_name, last_name)
  puts "Olá #{first_name} #{last_name}, como você está?"
end
first_name = 'Leonardo'
last_name= 'Barreto'
talk(first_name, last_name)//


def signal(color = 'vermelho')
  puts "O sinal está #{color}"
end
signal
color = 'verde'
signal(color)


def compare(a, b)
  a > b
end
a = 1
b = 2
result = compare(a, b)
puts "o resultado da comparação é '#{result}'"


def foo
  local = "Local é acessada apenas dentro deste metodo"
  print local
end
foo
puts local


class Calculadora

  def diminuir(a, b)
    a - b
    print 'O valor dos números subtraido é: '
  end
  def multiplicar(a, b)
    a * b
    print 'Você decidiu multiplicar os números: '
  end

  def somar(a, b, name)
   c= a + b  
    print "Senhor #{name} o valor do resultado é:#{c}"
  end 

  def dividir
   a / b 
   print 'Após fazer a divisão será: '

  end

end

 leo = Calculadora.new
print "Qual é seu nome: "
 name = gets.chomp
 print "escolha um  numero:"
 numero1 = gets.chomp.to_i
 print "escolha um  numero:"
 numero2 = gets.chomp.to_i
 leo.somar(numero1, numero2, name)

