# Create new game instance
class Game
  require_relative 'players'
  require_relative 'board'

  def initialize
    @player1 = nil
    @player2 = nil
    @board = nil
    @game_over = false
    @turn = 0

    setup_players
    create_board
    play_game
  end

  private

  def setup_players
    puts 'Welcome to Tic-Tac-Toe'

    puts "Type in the first player's name:"
    name1 = gets.chomp
    @player1 = Player.new(name1, 'x')

    puts 'Type in the second player\'s name:'
    name2 = gets.chomp
    @player2 = Player.new(name2, 'o')

    puts "#{@player1.name.capitalize!}, you'll be Xs."
    puts "#{@player2.name.capitalize!}, you'll be Os."
  end

  def create_board
    @board = Board.new 
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
      # horizontal
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      # vertical
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      # diagonal
      [0, 4, 8], [2, 4, 6]
    ]

    # check if the board game has Xs or Os
    # at any of the the winning combos location
    someone_won = winning_combos.any? do |combo|
      combo.all? do |index|
        @board.board[index] == player.marker
      end
    end

    if someone_won
      end_game(player)
    else
      @turn += 1
      end_game('tie') if @turn >= 9
    end
  end

  def end_game(player)
    if player == 'tie'
      puts "It's a tie."
    else
      puts "#{player.name} won!"
    end
    @game_over = true
    reset_game
  end

  def reset_game
    puts ''
    puts 'do you want to play a new game?'
    response = gets.chomp
    if response == 'yes'
      Game.new
    else
      puts 'the game is over'
      exit
    end
  end
end

Game.new
