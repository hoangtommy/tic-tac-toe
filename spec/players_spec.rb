require './lib/players'

describe "Players class" do
  context "when initialization happens" do
  	player = Player.new('Jobbin', 'x')
  	it "creates a player" do
  	  expect(player.name).to eql('Jobbin')
  	end

  	it "assigns player a marker" do
  	  expect(player.marker).to eql('x')
  	end
  end
end