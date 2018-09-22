class Player
	
	attr_reader :name, :marker

	def initialize(name, marker)
		@name = name
		@marker = marker
	end

	protected

		def move
			puts "I'm moving!"
		end

end