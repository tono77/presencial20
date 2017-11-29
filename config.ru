
# Si se ingresa a la url /index:
# Agregar un código de respuesta 200.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body una etiqueta de título que contenga un texto "Estás en el Index!".

# Si se ingresa a la url /otro:
# Agregar un código de respuesta 200.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body una etiqueta de título que contenga un texto "Estás en otro landing!".

# Si se ingresa a cualquier otra url:
# Agregar un código de respuesta 404.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body el archivo 404.html creado al inicio.

# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
  	case env['REQUEST_PATH']
  		when  '/'
      	[202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]

      when '/index'
      	[200, { 'Content-Type' => 'text/html' }, ['<meta charset="utf-8"> <title> Estás en el Index! </title>']]

      when '/otro'
      	[200, { 'Content-Type' => 'text/html' }, ['<meta charset="utf-8"> <title> Estás en otro landing! </title>']]

      when '/url'
      	[404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
    end


  end
end
run MiPrimeraWebApp.new