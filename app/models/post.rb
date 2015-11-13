class Post < ActiveRecord::Base
<<<<<<< HEAD
	has_many :post_users
	has_many :users, through: :post_users
=======
	belongs_to :user
	has_many :user
>>>>>>> fc4cef16423202a415645f7baf2d193ac3ac9764
end
