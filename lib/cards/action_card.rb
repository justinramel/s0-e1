class ActionCard < CardBase

	def initialize args
		super args
		@type = :action
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
