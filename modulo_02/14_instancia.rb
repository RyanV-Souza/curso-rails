class Pessoa
    def initialize(nome_fornecido = "indigente")
        @nome = nome_fornecido
    end

    def imprimir_nome
        @nome
    end
end

p = Pessoa.new("Ryan")
puts p.imprimir_nome
