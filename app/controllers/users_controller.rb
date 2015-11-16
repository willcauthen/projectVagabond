class UsersController < ApplicationController
	before_action :logged_in?, except: [:index, :show]
	
	def index
		@users = User.all
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
		@posts = Post.where(user:@user.id)
		render :show
	end
	def destroy
		id = params[:id]
		@user = User.find(id)
		@user.destroy
		redirect_to users_path
	end
end
