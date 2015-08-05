class ChangeNegotiableTypeToCars < ActiveRecord::Migration
  def change

  	change_table :cars do |t|
  		t.change :negotiable, :string
  	end
  end
end
