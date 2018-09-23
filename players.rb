class Player
	
	require './board.rb'

	attr_reader :name, :marker

	def initialize(name, marker)
		@name = name
		@marker = marker
	end

	def move(game, board)
		puts "#{self.name}, select a position to place your #{self.marker}"
		position = gets.chomp
		until position.to_i.between?(1,9)
			puts "Please type in an integer that represents an open position"
			position = gets.chomp
		end
		board.update_board(game, position.to_i, self.marker)
	end

end