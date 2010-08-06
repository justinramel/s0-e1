class CardFactory 
	def self.copper_coin
		TreasureCard.new :name => 'Copper Coin', :cost => 0, :gold => 1
	end
	
	def self.silver_coin
		TreasureCard.new :name => 'Silver Coin', :cost => 3, :gold => 2
	end

	def self.gold_coin
		TreasureCard.new :name => 'Gold Coin', :cost => 6, :gold => 3
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
	
	def self.cellar
		ActionCard.new :name => 'Cellar', :cost => 2
	end

	def self.market
		ActionCard.new :name => 'Market', :cost => 5
	end

	def self.militia
		ActionCard.new :name => 'Militia', :cost => 4
	end

	def self.mine
		ActionCard.new :name => 'Mine', :cost => 5
	end

	def self.moat
		ActionCard.new :name => 'Moat', :cost => 2
	end
	
	def self.remodel
		ActionCard.new :name => 'Remodel', :cost => 4
	end
	
	def self.smithy
		ActionCard.new :name => 'Smithy', :cost => 4
	end
	
	def self.village
		ActionCard.new :name => 'Village', :cost => 3
	end

	def self.woodcutter
		ActionCard.new :name => 'Woodcutter', :cost => 3
	end

	def self.workshop
		ActionCard.new :name => 'Workshop', :cost => 4
	end
end
