class Pessoa
    
    def initialize(cont = 5)
        cont.times  do |i|
            puts i
        end
    end


    def falar(nome = "Pessoal")
        "Olá, #{nome}"
    end

    def falar2(nome = "Pessoal", texto = "Texto")
        "Olá, #{nome} #{texto} "
    end
end

p = Pessoa.new


puts p.falar
puts p.falar2("Ryan", 'Oi')