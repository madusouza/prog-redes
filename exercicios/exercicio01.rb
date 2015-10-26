# Programação para Redes
# Aluna: Maria Duciele de Souza Silva

# ============================

# Exercício 1 - Implementando classes

# Implemente a classe Retangulo com os seguintes membros:

# – Atributos largura e altura, ambos com acesso de leitura e escrita. Não podem assumir valor zero ou negativo.

# – Método area. Sem argumentos e deve retornar o valor da área do retângulo.

# – Método perimetro. Sem argumentos e deve retornar o valor do perímetro do retângulo.

# – Método set_dimensoes. Deve definir dois argumentos que serão utilizados para alterar as dimensões do retângulo. Valores negativos devem ser ignorados.

# – Método quadrado. Deve retornar true caso o retângulo seja um quadrado e false em caso contrário.

# • Escreva um programa para testar a implementação da classe.


class Retangulo
	attr_accessor :largura
	attr_accessor :altura

	def set_dimensoes(larg,alt)
		if (larg.to_i > 0) and (alt.to_i > 0)
			@largura = larg
			@altura = alt
		end
	end

	def area
		@area = altura.to_i * largura.to_i
	end

	def perimetro
		@perimetro = 2*(altura.to_i + largura.to_i)
	end

	def quadrado?
		altura.to_i == largura.to_i
	end

	def exibir
		puts 'largura = ' + largura.to_s 
		puts 'altura = ' + altura.to_s
		puts 'perimetro = ' + perimetro.to_s
		puts 'area = ' + area.to_s
		puts 'quadrado = ' + quadrado?.to_s
	end
end

r = Retangulo.new 

r.set_dimensoes(3,3)

r.exibir()