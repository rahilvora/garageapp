class Car < ActiveRecord::Base

	validates :brand, presence: true
	validates :name, presence: true
	validates :number, presence: true
	validates :owner, presence: true
	validates :color, presence: true
	validates :date, presence: true
	validates :negotiable, presence: true
	validates :price, presence: true
	belongs_to :admin

	
end
