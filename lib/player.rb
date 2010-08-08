class Player
	attr_reader :deck, :hand, :discard

  def initialize(deck)
		@deck = deck
		@discard = []
	end

	def draw
		#if (@deck.count < 5) recreate
		shuffle
		@hand = @deck.slice!(0...5) 	
	end

	def shuffle
		@deck = @deck.sort_by{ rand }
	end

	def hand_value
		value = 0
		@hand.each do 	
			value = value + 1
		end
		value
	end
end
