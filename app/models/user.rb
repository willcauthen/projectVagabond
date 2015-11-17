class User < ActiveRecord::Base

	has_many :posts
	has_many :post_users
	has_many :posts, through: :post_users

	has_secure_password

	def self.confirm(params)
  		@user = User.find_by({email: params[:email]})
  		@user.authenticate(params[:password])
	end
	
end
