require 'dominion'

describe Dominion do
  let(:game) { Dominion.new(2) }

	describe "when created with 2 players" do
		it "store should be initialized" do
			game.should_not be_nil	
		end

		it "should have 2 players" do
			game.players.count.should == 2	
		end
	end

	describe "when 3 piles are empty" do
		before(:each) do
			10.times { game.store.take_card(:smithy) }
			10.times { game.store.take_card(:market) }
			10.times { game.store.take_card(:workshop) }
		end
		
		it "should be ended" do
			game.should be_ended	
		end
	end
end
