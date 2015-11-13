class UsersController < ApplicationController
	def index
		@users = User.all
		#@posts = @user.post.all
		render :index
	end
	def new
		@user = User.new
		render :new
	end
	def create	
		user_params = params.require(:user).permit(:user_name, :email, :password, :current_city, :about)
		@user = User.create(user_params)
		p @user
		login(@user)
		redirect_to @user
	end
	# Uriel- I added this to make sure a user is logged in, we can take it out.
	# before_action :logged_in?, only: [:show]
	def edit
		id = params[:id]
		@user = User.find(id)
		render :edit
	end
	def update
		id = params[:id]
		@user = User.find(id)
		updated_info = params.require(:user).permit(:user_name, :current_city, :about)
		@user.update_attributes(updated_info)
		redirect_to @user
	end
	def show
		@user = User.find(params[:id])
		render :show
	end
	def destroy
		id = params[:id]
		@user = User.find(id)
		@user.destroy
		redirect_to users_path
	end
end
