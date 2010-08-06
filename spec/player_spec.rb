require 'player'

describe Player, "when created" do
	let(:player) { default_player }

	it "should have a deck of 10 cards" do
		player.deck.count.should == 10
	end

	it "should have an empty discard pile" do
		player.discard.count.should == 0	
	end
end

describe Player, "when drawing a new hand" do
	let(:player) { default_player }

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

def default_player 
	deck = Store.new.deal_deck
	Player.new(deck)
end
