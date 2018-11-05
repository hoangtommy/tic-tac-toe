require './lib/game'

describe "Game class" do
  context "when game is initialized" do
  	it "creates an instance of game" do
  	  expect(Game.new).to be_instance_of(Game)
  	end
  end

  # context "when players are created" do
  # 	it "creates playerOne" do
  # 	  expect(Game.new.@)
  # 	end
  # end
end