class VictoryCard < CardBase
	attr_accessor :victory_points

	def initialize args
		super args
		@type = :victory
		@victory_points = 0
	end

	def self.estate
		VictoryCard.new :name => 'Estate', :cost => 2, :victory_points => 1
	end

	def self.duchy
		VictoryCard.new :name => 'Duchy', :cost => 5, :victory_points => 3
	end

	def self.province
		VictoryCard.new :name => 'Province', :cost => 8, :victory_points => 6
	end
end
