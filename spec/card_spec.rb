require 'cards/treasure_card.rb'

describe TreasureCard, "copper coin" do
	subject { CardFactory.copper_coin }

	its(:type) { should ==  :treasure }
	its(:name) { should == "Copper Coin" }
	its(:cost) { should ==  0 }
	its(:gold) { should ==  1 }
end

describe TreasureCard, "silver coin" do
	subject { CardFactory.silver_coin }

	its(:type) { should ==  :treasure }
	its(:name) { should == "Silver Coin" }
	its(:cost) { should ==  3 }
	its(:gold) { should ==  2 }
end

describe TreasureCard, "gold coin" do
	subject { CardFactory.gold_coin }

	its(:type) { should ==  :treasure }
	its(:name) { should == "Gold Coin" }
	its(:cost) { should ==  6 }
	its(:gold) { should ==  3 }
end
