class Pessoa
    attr_accessor :nome, :email
end

class PessoaFisica < Pessoa
    attr_accessor :cpf

    def falar(texto)
        texto
    end
end

class PessoaJuridica < Pessoa
    attr_accessor :cnpj

    def pagar_fornecedor
        puts "Pagando fornecedor"
    end
end

p1 = Pessoa.new
puts p1.nome = "Ryan"
puts p1.email = "teste@teste"
puts "========================="

p2 = PessoaFisica.new
puts p2.nome = "Joao"
puts p2.email = "joao@joao"
puts p2.cpf = "123"
puts p2.falar("Hello")
puts "========================="

p3 = PessoaJuridica.new
puts p3.nome = "Jorge"
puts p3.email = "jorge@jorge"
puts p3.cnpj = "1234"
puts p3.pagar_fornecedor