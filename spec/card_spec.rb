require 'cards/treasure_card.rb'

describe TreasureCard do
	subject { TreasureCard.copper_coin }

	its(:type) { should ==  :treasure }
	its(:name) { should == "Copper Coin" }
	its(:cost) { should ==  0 }
end
