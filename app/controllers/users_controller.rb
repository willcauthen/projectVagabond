class UsersController < ApplicationController
	def index
		@users = User.all
		@posts = @user.post.all
		render :index
	end

	def new
		@user = User.new
		render :new
	end

	def create	
		user_params = params.require(:user).permit(:user_name, :email, :password, :current_city, :about)
		@user = User.create(user_params)
		login(@user)
		redirect_to '/users/#{@user.id}'
	end
	def edit

	end
	def update

	end
	def show
		@user = User.find(params[:id])
		render :show
	end
	def destroy
		
	end
end
