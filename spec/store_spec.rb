require 'store.rb'

describe Store, "when created with 4 players" do
	let(:store) { Store.new(4) }

	it "should contain 53 Copper Coins" do
		count_of_cards_with_name('Copper Coin').should == 53
	end
	
	it "should contain 40 Silver Coins" do
		count_of_cards_with_name('Silver Coin').should == 40
	end

	it "should contain 30 Gold Coins" do
		count_of_cards_with_name('Gold Coin').should == 30
	end

	it "should contain 123 treasure cards" do
		count_of_cards_with_type(:treasure).should == 123
	end
	
	it "should contain 12 estate cards" do
		count_of_cards_with_name('Estate').should == 12
	end
	
	it "should contain 12 duchy cards" do
		count_of_cards_with_name('Duchy').should == 12
	end
	
	it "should contain 12 province cards" do
		count_of_cards_with_name('Province').should == 12
	end

	it "should contain 36 victory cards" do
		count_of_cards_with_type(:victory).should == 36
	end

	it "should contain 10 cellar cards" do
		count_of_cards_with_name('Cellar').should == 10
	end

	it "should contain 10 market cards" do
		count_of_cards_with_name('Market').should == 10
	end

	it "should contain 10 militia cards" do
		count_of_cards_with_name('Militia').should == 10
	end

	it "should contain 10 moat cards" do
		count_of_cards_with_name('Moat').should == 10
	end

	it "should contain 10 remodel cards" do
		count_of_cards_with_name('Remodel').should == 10
	end

	it "should contain 10 smithy cards" do
		count_of_cards_with_name('Smithy').should == 10
	end

	it "should contain 10 village cards" do
		count_of_cards_with_name('Village').should == 10
	end

	it "should contain 10 woodcutter cards" do
		count_of_cards_with_name('Woodcutter').should == 10
	end

	it "should contain 10 workshop cards" do
		count_of_cards_with_name('Workshop').should == 10
	end

	it "should contain 90 action cards" do
		count_of_cards_with_type(:action).should == 90
	end

	it "should contain 249 cards" do
		store.cards.count.should == 249
	end
	
end

describe Store, "when created with 2 players" do
	let(:store) { Store.new(2) }

	it "should contain only 8 province cards" do
		count_of_cards_with_name('Province').should == 8
	end
end

def count_of_cards_with_name(name)
	store.cards.select { |c| c.name == name }.count
end

def count_of_cards_with_type(type)
	store.cards.select { |c| c.type == type }.count
end
