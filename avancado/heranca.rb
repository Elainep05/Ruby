class Veiculo
  attr_accessor :nome, :marca, :modelo

  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "#{marca} está pronto para iniciar o trajeto"
  end

  def buzinar
    puts "Beep! Beep!"
  end
end

class Carro < Veiculo
  attr_accessor :nome, :marca, :modelo

  def dirigir
    puts "#{nome} iniciando trajeto"
  end
end

class Moto < Veiculo
  def pilotar
    puts "#{nome} iniciando trajeto"
  end
end

honda = Carro.new("Civic", "Honda", "SI")
honda.ligar
honda.buzinar
honda.dirigir

lancer = Carro.new("Lancer", "Mitsubishi", "EVO")
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Carro.new("Fazer", "Yamaha", "250x")
fazer.ligar
fazer.buzinar
fazer.dirigir
