require 'cards/card_base'

class TreasureCard < CardBase
	attr_accessor :gold

	def initialize args
		@gold = 0
		@type = :treasure
		super args
	end
end
