require 'cards/treasure_card'
require 'cards/victory_card'
require 'cards/action_card'
require 'cards/card_factory'

class Store
	attr_reader :cards
	
	def initialize(number_of_players = 2)
		@cards = {}

		add_cards(53, :copper_coin)
		add_cards(40, :silver_coin)
		add_cards(30, :gold_coin)

		add_cards(12, :estate)
		add_cards(12, :duchy)
		add_cards(12, :province)

		@province = []
		if (number_of_players == 2)
			add_cards(8, :province)
		else
			add_cards(12, :province)
		end

		add_cards(10, :cellar)
		add_cards(10, :market)
		add_cards(10, :militia)
		add_cards(10, :moat)
		add_cards(10, :remodel)
		add_cards(10, :smithy)
		add_cards(10, :village)
		add_cards(10, :woodcutter)
		add_cards(10, :workshop)
	end

	def add_cards(pile_size, create_method)
		pile = []
		pile_size.times { pile << CardFactory.method(create_method).call }
		@cards[create_method] = pile
	end

	def deal_deck
		deck = []
		7.times { deck << @cards[:copper_coin].pop }
		3.times { deck << @cards[:estate].pop }
		deck
	end

	def take_card(card)
		if (@cards[card].count == 0)
			raise "no #{card} cards left"
		end
		@cards[card].pop
	end

	def ended?
		empty_piles = 0

		@cards.each do |name, deck|
			if (deck.count == 0) 
				empty_piles = empty_piles + 1
			end
		end

		empty_piles >= 3
	end

end
