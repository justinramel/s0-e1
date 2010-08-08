require 'player'

describe Player do
	let(:player) { default_player }
	
	describe "when created" do
		it "should have a deck of 10 cards" do
			player.deck.count.should == 10
		end

		it "should have an empty discard pile" do
			player.discard.count.should == 0	
		end
	end

	describe Player, "when drawing a new hand" do
		before do
			player.draw
		end

		it "should populate hand with 5 cards" do
			player.hand.count.should == 5	
		end

		it "should reduce the deck by 5 cards" do
			player.deck.count.should == 5	
		end
	end

	describe ".hand_value should return the value of their hand" do
		before do
			player.draw
			player.hand.clear
			2.times { player.hand << CardFactory.copper_coin }
		end	

		it "should have a value of 2" do
			player.hand_value.should == 2	
		end
	end
end

def default_player 
	deck = Store.new.deal_deck
	Player.new(deck)
end
