require 'dominion'

describe Dominion, "when created with 2 players" do
  let(:game) { Dominion.new(2) }

	it "store should be initialized" do
		game.should_not be_nil	
	end

	it "should have 2 players" do
		#subject.players.count.should == 2	
	end
end
