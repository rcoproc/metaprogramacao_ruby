require 'pry'

class Restaurante
  attr_accessor :nome
end

class Franquia
  def initialize
    @@restaurantes = []
  end
  def expandir(restaurante)
    def restaurante.cadastrar_vips
      puts "Restarante #{self.nome} agora com área VIP!"
      @@restaurantes << self
    end
  end

  def method_missing(name, *args)
    @@restaurantes.each do |r|
      return "O restaurante #{r.nome} já foi cadastrado!" \
        if r.nome.eql? *args
    end
    return "o restaurante #{args[0]} não foi cadastrado ainda."
  end
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano"
franquia = Franquia.new

franquia.expandir restaurante_um
restaurante_um.cadastrar_vips

puts franquia.já_cadastrado?("Fasano")
puts franquia.já_cadastrado?("Boteco")

