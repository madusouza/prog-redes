class Retangulo
	attr_accessor :largura
	attr_accessor :altura

	def largura=(larg)
		if larg.to_i != 0 and larg.to_i > 0
			@largura = larg
		end
	end

	def altura=(alt)
		if alt.to_i != 0 and alt.to_i > 0
			@altura = alt
		end
	end

	def perimetro
		@perimetro = 2*(altura.to_i + largura.to_i)
	end

	def quadrado?
		altura.to_i == largura.to_i
	end
end

r = Retangulo.new 

r.largura = 3
r.altura = 3

puts 'largura = ' + r.largura.to_s + ' altura = ' + r.altura.to_s + ' perimetro = ' + r.perimetro.to_s + ' quadrado = ' + r.quadrado?.to_s