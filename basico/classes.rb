
#Ruby é uma linguagem, considerada puramente orientada a objetos
# Por que tudo no ruby é objetos

#Classe possui atributos e metodos
#Características e ações

# Carro(nome, marca, modelo, cor quantidade de portas, etc...)

class Carro
  attr_accessor :nome

  def ligar
    puts "O carro esta pronto para iniciar o trajeto."
  end
end

civic = Carro.new
civic.nome = "Civic"
puts civic.nome
civic.ligar
