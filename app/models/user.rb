class User < ActiveRecord::Base

	has_many :posts

  # for refactoring later
  # has_secure_password

	BCrypt::Engine.cost = 12
	validates :user_name, presence: true, uniqueness: true 
	validates :email, presence: true, uniqueness: true
	validates :password_digest, presence: true
	validates_confirmation_of :password

	def password
  		@password
	end

	def password=(unencrypted_password)
    	# make an instance variable to store unencrypted password
    	@password = unencrypted_password
    	# set the password_digest field on this user to an obscured version
    	self.password_digest = BCrypt::Password.create(@password)
	end

	def authenticate(unencrypted_password)
  		# create a new `secure_password` object with special `==`
  		secure_password = BCrypt::Password.new(self.password_digest)
  		# check that a hashed version of the unencrypted password is the same as the secure password
  		# the method `==` has been modified for `secure_password` to first hash whatever it's comparing to
  		if secure_password == unencrypted_password
   			# password correct - return the user
    		self
  		else
    		# password incorrect - return false
    		false
  		end
	end

	def self.confirm(email_param, password_param)
  		user = User.find_by_email(email_param)
  		user.authenticate(password_param)
	end

end
