require 'player'

describe Player, "when created" do
	subject { Player.new('Justin', nil) }

	its(:name) { should == 'Justin' }
end
