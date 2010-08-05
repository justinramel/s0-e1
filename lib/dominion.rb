require 'store'

class Dominion
	attr_reader :store, :players

	def initialize(number_of_players)
		@store = Store.new(number_of_players)	
		deck = @store.deal_deck
		@players = []
		number_of_players.times { @players << Player.new(deck) }
	end
end
