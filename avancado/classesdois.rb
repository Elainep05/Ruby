class Conta
  attr_accessor :saldo

  def deposita(valor)
    self.saldo += valor
    #puts valor.class
    #puts "Depositando a quantia de " + valor.to_s + " reais."
    puts "Depositando a quantia  de #{valor} reais."
  end
end

c = Conta.new

c.saldo = 0.0
#puts c.saldo.class
c.deposita(100.00)
puts c.saldo
