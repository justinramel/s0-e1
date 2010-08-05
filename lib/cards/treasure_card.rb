require 'cards/card_base'

class TreasureCard < CardBase
	attr_accessor :gold

	def initialize args
		super args
		@type = :treasure
		@gold = 0
	end

	def self.copper_coin
		TreasureCard.new :name => 'Copper Coin', :cost => 0, :gold => 1
	end
	
	def self.silver_coin
		TreasureCard.new :name => 'Silver Coin', :cost => 3, :gold => 2
	end

	def self.gold_coin
		TreasureCard.new :name => 'Gold Coin', :cost => 6, :gold => 3
	end
end
