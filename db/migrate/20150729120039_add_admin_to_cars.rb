class AddAdminToCars < ActiveRecord::Migration
  def change
    add_reference :cars, :admin, index: true, foreign_key: true
  end
end
