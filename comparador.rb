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
		if num > 62
			num = num - 62
		elsif num < 0
			num = 62 + num
		end
		@newVar[num]
	end
end