class UsersController < ApplicationController
	def index
	end
	def new
	end
	def create
		user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    	@user = User.create(user_params)
    	login(@user) # <-- login the user
    	redirect_to "/users/#{@user.id}" # <-- go to show
	end
	def edit	
	end
	def update
	end
	def show
	end
	def destroy
	end
end
