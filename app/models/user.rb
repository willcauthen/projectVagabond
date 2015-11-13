class User < ActiveRecord::Base

	has_many :posts

  has_secure_password

	def self.confirm(params)
  		@user = User.find_by({email: params[:email]})
  		@user.authenticate(params[:password])
	end

end
