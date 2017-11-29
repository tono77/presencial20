class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(file = 'notas.txt')
    alumnos = []
    data = []
    File.open(file, 'r') { |file| data = file.readlines.map(&:chomp) }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
  end
end

print Alumno.read_file
