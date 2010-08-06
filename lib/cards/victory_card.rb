class VictoryCard < CardBase
	attr_accessor :victory_points

	def initialize args
		super args
		@type = :victory
		@victory_points = 0
	end
end
