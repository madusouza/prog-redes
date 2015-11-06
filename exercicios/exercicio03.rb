class Fracao
	attr_accessor :numerador
	attr_reader :denominador

	def initialize(num, den)
		@numerador = num
		self.denominador = den
	end

	def denominador=(den)
		if den.to_i != 0
			@denominador = den
		end
	end

	def to_s
	  @numerador.to_s + '/' + @denominador.to_s
	end

	def to_f
		@numerador.to_f/@denominador.to_f
	end

	def somar(f)
	  d = @denominador * f.denominador
	  n = @numerador * f.denominador + f.numerador * @denominador
	  #return Fracao.new(n,d)
	  self.simplificar(n,d)
	end

	def subtrair(f)
	  d = @denominador * f.denominador
	  n = @numerador * f.denominador - f.numerador * @denominador
	  #return Fracao.new(n,d)
	  self.simplificar(n,d)
	end

	def multiplicar(f)
	  d = @denominador * f.denominador
	  n = @numerador * f.numerador
	  #return Fracao.new(n,d)
	  self.simplificar(n,d)
	end

	def dividir(f)
	  d = @denominador * f.numerador
	  n = @numerador * f.denominador
	  #return Fracao.new(n,d)
	  self.simplificar(n,d)
	end

	def mdc(n,d)
		while d != 0 do
        	n, d = d, n % d
    	end
    	return n
	end

	def simplificar(num,den)
		divisor_comum = self.mdc(num,den)
		num_simp = num / divisor_comum
		den_simp = den / divisor_comum

		if den_simp == 1
			return num_simp
		elsif divisor_comum == 1
			return Fracao.new(num,den)
		else
			return Fracao.new(num_simp,den_simp)
		end
	end
end

f1 = Fracao.new(40,50)
puts 'Fracao 1: ' + f1.to_s
f2 = Fracao.new(10,20)
puts 'Fracao 2: ' + f2.to_s
f3 = f1.somar(f2)
f4 = f1.subtrair(f2)
f5 = f1.multiplicar(f2)
f6 = f1.dividir(f2)

puts 'Soma: ' + f3.to_s
puts 'Subtracao: ' + f4.to_s
puts 'Multiplicacao: ' + f5.to_s
puts 'Divisao: ' + f6.to_s

puts f3.to_f
puts f4.to_f
puts f5.to_f
puts f6.to_f


#puts f3.simplificar