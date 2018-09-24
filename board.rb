class Board
	attr_reader :board

	def initialize
		make_board
	end

	def make_board
		@board = [0, 1, 2, 3, 4, 5, 6, 7, 8] #is this instance variable @board the same as the variable inside class Game?
		display_board(@board)
	end

	def update_board(position, player)
		@board[position] = player.marker
		display_board(@board)
	end

	private

		def display_board(board)
			puts ""
			puts " #{board[0]} | #{board[1]} | #{board[2]} "
			puts "--- --- ---"
			puts " #{board[3]} | #{board[4]} | #{board[5]} "
			puts "--- --- ---"
			puts " #{board[6]} | #{board[7]} | #{board[8]} "
			puts ""
		end

end