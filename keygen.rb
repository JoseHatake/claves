require 'securerandom'
class Keygen
	def initialize contra
		@pass = contra
	end
	def generatePrivatePass
		random_string = ""
		50.times do
			random_string = random_string + SecureRandom.base64
			random_string['==']=''
		end
		comprimePub random_string
		random_string
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
end