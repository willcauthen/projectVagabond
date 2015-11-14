class Post < ActiveRecord::Base
	has_many :post_users
	has_many :users, through: :post_users
	# belongs_to :user
	# has_many :user
end
