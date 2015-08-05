class AddFieldsToCars < ActiveRecord::Migration
  def change
    add_column :cars, :brand, :string
    add_column :cars, :name, :string
    add_column :cars, :number, :string
    add_column :cars, :date, :datetime
    add_column :cars, :owner, :string
    add_column :cars, :color, :string
    add_column :cars, :price, :integer
    add_column :cars, :negotiable, :boolean
  end
end
