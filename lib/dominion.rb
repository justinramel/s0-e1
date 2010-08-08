require 'store'
require 'player'

class Dominion
	attr_reader :store, :players

	def initialize(number_of_players)
		@store = Store.new(number_of_players)	
		@players = []
		number_of_players.times { @players << Player.new(@store.deal_deck) }
	end

	def ended?
		@store.ended?
	end
end
