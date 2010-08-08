class CardBase
	attr_accessor :type, :name, :cost, :gold

	def initialize args
		@gold = 0
    args.each do |k,v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end
	
	def to_s
		name
	end
end
