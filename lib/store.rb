require 'cards/treasure_card'
require 'cards/victory_card'
require 'cards/action_card'

class Store
	attr_reader :cards

	def initialize(number_of_players)
		@cards = [];

		53.times { @cards << TreasureCard.copper_coin }
		40.times { @cards << TreasureCard.silver_coin }
		30.times { @cards << TreasureCard.gold_coin }

		12.times { @cards << VictoryCard.estate }
		12.times { @cards << VictoryCard.duchy }

		if (number_of_players == 2)
			8.times { @cards << VictoryCard.province }
		else
			12.times { @cards << VictoryCard.province }
		end

		10.times { @cards << ActionCard.cellar }
		10.times { @cards << ActionCard.market }
		10.times { @cards << ActionCard.militia }
		10.times { @cards << ActionCard.moat }
		10.times { @cards << ActionCard.remodel }
		10.times { @cards << ActionCard.smithy }
		10.times { @cards << ActionCard.village }
		10.times { @cards << ActionCard.woodcutter }
		10.times { @cards << ActionCard.workshop }
	end
end
