# A chamada do método de classe attr_acessor, define os métodos nome e nome= na classe Pessoa.
# A técnica de código gerando código é conhecida como metaprogramação, ou metaprogramming, como já definimos.
class Pessoa
  attr_accessor :nome
end

p = Pessoa.new
p.nome = "Joaquim"

puts p.nome
# => "Joaquim"
p.nome = "Ricardo"
puts p.nome
# => "Ricardo"
