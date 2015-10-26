class Retangulo
	attr_accessor :largura
	attr_accessor :altura

	def set_dimensoes(larg,alt)
		if larg.to_i != 0 and larg.to_i > 0
			@largura = larg
		end

		if alt.to_i != 0 and alt.to_i > 0
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

r.set_dimensoes(4,3)

r.exibir()