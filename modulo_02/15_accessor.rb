class Pessoa
    attr_accessor :nome, :idade
end

p1 = Pessoa.new
p1.idade = 12
puts p1.idade
p1.nome = "Ryan"
puts p1.nome