class Game
	require "./players.rb" 
	require "./board.rb" 
	
	def initialize
		setup_players
		setup_board
		play_game
	end

	# private

		def setup_players
			puts "Welcome to Tic-Tac-Toe"
		
			puts "Type in the first player's name:"
			name1 = gets.chomp
			@player1 = Player.new(name1, "x")

			puts "Type in the second player's name:"
			name2 = gets.chomp
			@player2 = Player.new(name2, "o")

			puts "#{@player1.name.capitalize!}, you'll be Xs. #{@player2.name.capitalize!}, you'll be Os."
		end

		def setup_board
			board = Board.new
		end

		def play_game
			puts @player2.name
		end

		def end_game
			# check to if board has any 3 in a rows
			# declare winner
			# create new game
		end

end

one = Game.new