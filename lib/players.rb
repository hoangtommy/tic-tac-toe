# Creates player objects
class Player
  require './board.rb'

  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def move(board)
	position = get_move(board)
	board.update_board(position.to_i, self)
  end

  def get_move(board)
  	puts "#{name}, select a position to place your #{marker}"
	position = gets.chomp

    until position =~ /^[0-8]{1}$/ && (board.board[position.to_i] != 'x' && board.board[position.to_i] != 'o')
	  puts 'Please type in an integer that represents an open position'
	  position = gets.chomp
	end
	position
  end
end
