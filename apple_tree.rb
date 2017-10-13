class AppleTree
	attr_accessor :age
	attr_reader :height, :apples
	def initialize (age)
		@age = age
		@height = 5
		@apples = 5
	end

	def year_gone_by
		@age += 1
		@height *= 1.05
		if (4...11) === @age
		# if @age > 3 && @age < 11 
			@apples +=2
		end
	end

	def pick_apples
		@apples=0
	end
end