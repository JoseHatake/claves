require 'securerandom'
require "~/Documents/Proyectos/claves/cifrador.rb"
class Keygen
	def initialize contra
		@pass = contra
		@random_string = ""
		@rsa = ""
		@cifrado = Cifrador.new @pass
	end
	def generatePrivatePass
		50.times do
			@random_string = @random_string + SecureRandom.base64
			@random_string['==']=''
		end
		#comprimePub random_string
		@rsa = @cifrado.cifra @random_string
		@random_string
	end
	def comprimePub key
		#Toma bloques de 44
		var = 0
		var2 = 44
		25.times do
			temp = key[var...var2]
			var = var + 44
			var2 = var2 + 44
		end		
	end
	def getRSA
		@rsa
	end
	def getDesRSA
		@cifrado.descifra @rsa
	end
end

var = Keygen.new 'ThePassword'
ssh = var.generatePrivatePass
rsa = var.getRSA

puts ssh
puts "\n\n"+rsa
puts "\n\n"+var.getDesRSA