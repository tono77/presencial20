
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
      	[200, { 'Content-Type' => 'text/html' }, ['<meta charset="utf-8"> <h1> Estás en el Index! </h1>']]

      when '/otro'
      	[200, { 'Content-Type' => 'text/html' }, ['<meta charset="utf-8"> <h1> Estás en otro landing! </h1>']]

      when '/url'
      	[404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
      else
      	[200, { 'Content-Type' => 'text/html' }, ['<meta charset="utf-8"> <h1> Estás en otra parte!! </h1>']]
    end


  end
end
run MiPrimeraWebApp.new