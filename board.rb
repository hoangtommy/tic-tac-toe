class Board

	def initialize
		make_board
	end

	# private

		def make_board
			@board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
			display_board(@board)
		end

		def update_board(game, position, marker)
			@board[position] = marker unless @board[position] == "x" || @board[position] == "o"
			display_board(@board)
			# if @board.include?(position)
			# else 
			# 	puts "error" 
			# 	# to-do: create module or method to process position error or existing marker error
			# 	#, eg. game.error
			# end
		end

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