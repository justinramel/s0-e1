require 'store.rb'

describe Store, "when created with 4 players" do
	let(:store) { Store.new(4) }

	it "should contain 53 Copper Coins" do
		store.copper_coin.count.should == 53
	end
	
	it "should contain 40 Silver Coins" do
		store.silver_coin.count.should == 40
	end

	it "should contain 30 Gold Coins" do
		store.gold_coin.count.should == 30
	end

	it "should contain 12 estate cards" do
		store.estate.count.should == 12
	end
	
	it "should contain 12 duchy cards" do
		store.duchy.count.should == 12
	end
	
	it "should contain 12 province cards" do
		store.province.count.should == 12
	end

	it "should contain 10 cellar cards" do
		store.cellar.count.should == 10
	end

	it "should contain 10 market cards" do
		store.market.count.should == 10
	end

	it "should contain 10 militia cards" do
		store.militia.count.should == 10
	end

	it "should contain 10 moat cards" do
		store.moat.count.should == 10
	end

	it "should contain 10 remodel cards" do
		store.remodel.count.should == 10
	end

	it "should contain 10 smithy cards" do
		store.smithy.count.should == 10
	end

	it "should contain 10 village cards" do
		store.village.count.should == 10
	end

	it "should contain 10 woodcutter cards" do
		store.woodcutter.count.should == 10
	end

	it "should contain 10 workshop cards" do
		store.workshop.count.should == 10
	end
	
end

describe Store, "when created with 2 players" do
	let(:store) { Store.new(2) }

	it "should contain only 8 province cards" do
		store.province.count.should == 8
	end
end

describe Store, "when dealing initial deck" do
	let(:store) { Store.new(2) }
	let(:deck) { store.deal_deck }

	it "should deal 10 cards in total" do
		deck.count.should == 10	
	end

	it "should deal 7 copper coin cards" do
		deck.select { |c| c.name == TreasureCard.copper_coin.name }.count.should == 7
	end
	
	it "should deal 3 estate cards" do
		deck.select { |c| c.name == VictoryCard.estate.name }.count.should == 3
	end

	it "should reduce the copper coins by 7" do
		store.deal_deck
		store.copper_coin.count.should == 46
	end
	
	it "should reduce the estate coins by 3" do
		store.deal_deck
		store.estate.count.should == 9 
	end
end
