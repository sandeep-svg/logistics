class ShoppingCart < ApplicationRecord
	has_and_belongs_to_many :cards
	belongs_to :customer
end
