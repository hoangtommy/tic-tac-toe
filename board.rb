class Board
	
	def initialize
		make_board

	end


	private

		def make_board
			board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
			display_board(board)
		end

		def clear_board

		end

		def display_board(board)
			puts " #{board[0]} | #{board[1]} | #{board[2]} "
			puts "--- --- ---"
			puts " #{board[3]} | #{board[4]} | #{board[5]} "
			puts "--- --- ---"
			puts " #{board[6]} | #{board[7]} | #{board[8]} "
		end

end