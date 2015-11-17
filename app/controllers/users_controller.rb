class UsersController < ApplicationController

	before_action :logged_in?, except: [:new, :index, :show, :create]
	def index
		@current_user = current_user
		@users = User.all
		render :index
	end
	def new
		@user = User.new
		render :new
	end
	def create	
		puts "hey lets make a user"
		user_params = params.require(:user).permit(:user_name, :email, :password, :current_city, :about)
		@user = User.new(user_params)
		if @user.save
			puts "hey this is the user"
			p @user
		else
			puts "save failed"
		end
		login(@user)
		redirect_to @user
	end
	
	def edit
		@current_user = current_user
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
		@current_user = current_user
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
