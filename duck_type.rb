# Polimorfismo
# Para o criador de patos, não interessa que objeto 
# será passado como parâmetro. 
# Para ele basta que o objeto saiba fazer quack. 
# Esta característica da linguagem Ruby é conhecida como Duck Typing.


class PatoNormal
  def faz_quack
    puts "Quack!"
  end
end

class PatoEstranho
  def faz_quack
    puts "Queck!"
  end
end

class CriadorDePatos
  def castiga(pato)
    pato.faz_quack
  end
end

pato1 = PatoNormal.new
pato2 = PatoEstranho.new

c = CriadorDePatos.new
c.castiga(pato1) # "Quack!"
c.castiga(pato2) # "Queck!"
