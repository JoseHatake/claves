require "~/Documents/Proyectos/claves/comparador.rb"
class Cifrador
	def initialize pass
		@password = pass
		@background = Comparador.new
	end
	def cifra ms
		msCrifrado = ''
		count = 0
		#Cifra cada letra del mensaje
		ms.length.times do |e|
			#Busca el caracter cifrado con el comparadfor y la clave dada
			aux = @background.search ms[e]
			aux2 = @background.search @password[count]
			msCrifrado = msCrifrado + (@background.confirm (aux+aux2)).to_s
			#Contador para la posisción del pass
			if (count+1) == @password.length
				count = 0
			else
				count = count + 1
			end
		end
		msCrifrado
	end
	def descifra ms
		msCrifrado = ''
		count = 0
		#Cifra cada letra del mensaje
		ms.length.times do |e|
			#Busca el caracter cifrado con el comparadfor y la clave dada
			aux = @background.search ms[e]
			aux2 = @background.search @password[count]
			msCrifrado = msCrifrado + (@background.confirm (aux-aux2)).to_s
			#Contador para la posisción del pass
			if (count+1) == @password.length
				count = 0
			else
				count = count + 1
			end
		end
		msCrifrado
	end
end