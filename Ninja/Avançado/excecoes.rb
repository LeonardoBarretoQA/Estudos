# begin
# file = File.open('./ola')
# if file
#     puts file.read
# end

# rescue Exception => e

# puts e.message
# puts e.backtrace

# end



def soma(n1, n2)
   n1 + n2
rescue Exception => e

    puts e.message
puts 'Erro ao calcular os valores'
end

soma( '10', 5)
