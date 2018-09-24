class Player
	
	require './board.rb'

	attr_reader :name, :marker

	def initialize(name, marker)
		@name = name
		@marker = marker
	end

	def move(board)
		puts "#{self.name}, select a position to place your #{self.marker}"
		position = gets.chomp

		# to-do: check that player does not mark in existing position
		until position.to_i.between?(0,8)
			puts "Please type in an integer that represents an open position"
			position = gets.chomp
		end
		board.update_board(position.to_i, self)
	end

end