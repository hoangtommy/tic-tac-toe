class Game
	require "./players.rb" 
	require "./board.rb" 
	
	def initialize
		@player1 = nil
		@player2 = nil
		@board = nil
		@game_over = false

		setup_players
		create_board
		play_game
	end

	private

		def setup_players
			puts "Welcome to Tic-Tac-Toe"
		
			puts "Type in the first player's name:"
			name1 = gets.chomp #guest1
			@player1 = Player.new(name1, "x") #@player1("guest1", "x")

			puts "Type in the second player's name:"
			name2 = gets.chomp #guest2
			@player2 = Player.new(name2, "o") #@player2("guest2", "x")

			puts "#{@player1.name.capitalize!}, you'll be Xs. #{@player2.name.capitalize!}, you'll be Os."
		end

		def create_board
			@board = Board.new #new object board made
		end

		def play_game
			until @game_over
				@player2.move(@board)
				check_status(@player2)
				@player1.move(@board)
				check_status(@player1)
			end
		end

		def check_status(player)
			winning_combos = [
				#horizontal
				[0, 1, 2], [3, 4, 5], [6, 7, 8],
				#vertical
				[0, 3, 6], [1, 4, 7], [2, 5, 8],
				#diagonal
				[0, 4, 8], [2, 4, 6]
			]

			status = winning_combos.any? do |combo|
				combo.all? do |index|
					@board.board[index] == player.marker
				end
			end

			if status
				end_game(player)
			end
		end

		def end_game(player)
			puts "#{player.name} won!"
			@game_over = true
			puts ""
			puts "do you want to play a new game?"
			response = gets.chomp
			if response == "yes"
				Game.new
			else
				puts "the game is over"
				exit
			end
		end

end

one = Game.new