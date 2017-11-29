module Formula
	def perimetro(lado1, lado2)
		lado1*2 + lado2*2
	end

	def area(lado1, lado2)
		lado1*lado2
	end
end


class Rectangulo
  include Formula

  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
	puts "Medidas de los lados del rectángulo #{@base} #{@altura} #{@base} #{@altura}"
  end
end

class Cuadrado
	include Formula

  def initialize(lado)
    @lado = lado
  end

  def lados
  	puts "Medidas de los lados del cuadrado #{@lado} #{@lado} #{@lado} #{@lado}"
  end
end


Rectangulo.new(3,6).lados
Cuadrado.new(5).lados


puts "El perímetro del rectangulo es #{Rectangulo.new(3,6).perimetro(3,6)}"
puts "El área del rectangulo es #{Rectangulo.new(3,6).area(3,6)}"
puts "El perímetro del cuadrado es #{Cuadrado.new(6).perimetro(6, 6)}"
puts "El area del cuadrado es #{Cuadrado.new(6).area(6, 6)}"