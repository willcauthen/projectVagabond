class City < ActiveRecord::Base
	has_many :city_users
	has_many :users, through: :city_users
	has_many :post_users
	has_many :post, through: :post_users



attr_accessor :lat, :lng
	def initialize (lat, lng)
		@lat = lat
		@lng = lng
	end

end