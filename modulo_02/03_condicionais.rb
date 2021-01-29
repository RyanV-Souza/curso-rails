# Estrutura condicional ternária

sexo = 'X'
puts(sexo == 'M' ? "Masculino" : "Feminino")

#IF
puts 'Digite algum número: '
x = gets.chomp.to_i
if x > 2
    puts 'x é maior que 2'
end

#Unless - A menos que
puts 'Digite um número: '
x = gets.chomp.to_i
unless x >= 2
    puts 'X é menor que o 2'
else
    puts 'X é maior que o 2'
end

#CASE

puts 'Digite sua idade: '
idade = gets.chomp.to_i

case idade
when 0..2
    puts "Bebê"
when 3..12
    puts "Criança"
when 13..18
    puts "Adolescente"
else
    puts "Adulto"
end