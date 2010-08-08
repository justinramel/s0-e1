require 'cards/card_base'

class TreasureCard < CardBase
	def initialize args
		@type = :treasure
		super args
	end
end
