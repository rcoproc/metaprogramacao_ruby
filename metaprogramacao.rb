# Tudo isso é chamado meta-programação, um recurso muito comum de linguagens dinâmicas. 
# Meta-programação é a capacidade de gerar/alterar código em tempo de execução. 
# Note que isso é muito diferente de um gerador de código comum, 
# onde geraríamos um código fixo, que deveria ser editado na mão e a aplicação só rodaria esse código posteriormente.

class Aluno
  # Nao sabe nada
end

class Professor
  def ensina(aluno)
    def aluno.escreve  
      puts "sei escrever!"
    end
  end
end

juca = Aluno.new
puts juca.respond_to? :escreve
# => false


professor = Professor.new
professor.ensina juca
juca.escreve
# => "sei escrever"

