class Comparador
	def initialize
		var0 = ('0'..'9').to_a
		var1 = ('a'..'z').to_a
		var2 = ('A'..'Z').to_a
		@newVar = []
		count = 0
		var1.length.times do|a| 
			if a%3 == 0
				@newVar.push var0[count]
				count = count + 1
			end
			@newVar.push var1[a]
			@newVar.push var2[var1.length-a-1]
		end
		@newVar.push var0[count]
		@newVar.push '+'
		@newVar.push '/'
		@newVar.push '.'
		@newVar
	end
	def search letter
		var = 0
		@newVar.each do |e|
			if e == letter
				break
			end
			var = var + 1	
		end
		var
	end
	def confirm num
		if num > (@newVar.length-1)
			num = num - (@newVar.length-1)
		elsif num < 0
			num = (@newVar.length-1) + num
		end
		@newVar[num]
	end
end