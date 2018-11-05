require './lib/board'

describe "Board class" do
  context "when initializing" do
  	it "creates a board" do
  	  expect(Board.new).to be_instance_of(Board)
  	end
  end
end