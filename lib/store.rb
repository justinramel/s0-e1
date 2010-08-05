require 'cards/treasure_card'
require 'cards/victory_card'
require 'cards/action_card'

class Store
	attr_reader :copper_coin, :silver_coin, :gold_coin
	attr_reader :estate, :duchy, :province
	attr_reader :cellar, :market, :militia, :moat, :remodel, :smithy, :village, :woodcutter, :workshop
	
	def initialize(number_of_players = 2)
		@copper_coin = []
		53.times { @copper_coin << TreasureCard.copper_coin }
		@silver_coin = []
		40.times { @silver_coin << TreasureCard.silver_coin }
		@gold_coin = []
		30.times { @gold_coin << TreasureCard.gold_coin }
		@estate = []
		12.times { @estate << VictoryCard.estate }
		@duchy = []
		12.times { @duchy << VictoryCard.duchy }

		@province = []
		if (number_of_players == 2)
			8.times { @province << VictoryCard.province }
		else
			12.times { @province << VictoryCard.province }
		end

		@cellar = []
		10.times { @cellar << ActionCard.cellar }
		@market = []
		10.times { @market << ActionCard.market }
		@militia = []
		10.times { @militia << ActionCard.militia }
		@moat = []
		10.times { @moat << ActionCard.moat }
		@remodel = []
		10.times { @remodel << ActionCard.remodel }
		@smithy = []
		10.times { @smithy << ActionCard.smithy }
		@village = []
		10.times { @village << ActionCard.village }
		@woodcutter = []
		10.times { @woodcutter << ActionCard.woodcutter }
		@workshop = []
		10.times { @workshop << ActionCard.workshop }
	end

	def deal_deck
		deck = []
		7.times { deck << @copper_coin.pop }
		3.times { deck << @estate.pop }
		deck
	end

end
