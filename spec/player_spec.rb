require 'player'

describe Player, "when created" do
	let(:deck) { Store.new.deal_deck }
	let(:player) { Player.new(deck) }

	it "should have a deck of 10 cards" do
		player.deck.count.should == 10
	end
end
