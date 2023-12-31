class Customer < ApplicationRecord
	validates :name,  presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    validates :password, presence: true, length:{minimum:8 , maximum:95}
    validates :password_confirmation, presence: true, length:{minimum:8 , maximum:95}
	has_one :shopping_cart
	has_secure_password
end
