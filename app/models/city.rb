class City < ActiveRecord::Base
	has_many :city_users
	has_many :users, through: :city_users
	has_many :post_users
	has_many :post, through: :post_users
end
