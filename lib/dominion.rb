require 'store'
require 'player'

class Dominion
	attr_reader :store, :players

	def initialize(number_of_players)
		@store = Store.new(number_of_players)	
		@players = []
		number_of_players.times { @players << Player.new(@store.deal_deck) }
	end

	def buy(player)
		# take a player and get the value of their hand
		# ask store what the player can afford to buy 
	end

	def ended?
		@store.ended?
	end
end
