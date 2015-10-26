class Fracao
	attr_accessor :numerador
	attr_reader :denominador

	def denominador=(den)
		if den.to_i != 0
			@denominador = den
		end
	end
end

f = Fracao.new #instancia do objeto f da classe fracao

f.numerador = 3
f.denominador = 9

puts f.numerador.to_s + '/' + f.denominador.to_s