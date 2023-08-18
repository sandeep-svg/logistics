class Card < ApplicationRecord
	has_and_belongs_to_many :shopping_carts
end
