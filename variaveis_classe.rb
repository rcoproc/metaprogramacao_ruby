class Restaurante
  def initialize(nome)
    puts "criando um novo Restaurante: #{nome}"
    @@total ||= 0
    @@total = @@total + 1
    @nome = nome
  end

  def self.relatorio
    puts "Foram criados #{@@total} restaurantes"
  end
end

Restaurante.new("Fasano")
Restaurante.new("Fasano")
Restaurante.new("Fasano")

Restaurante.relatorio

