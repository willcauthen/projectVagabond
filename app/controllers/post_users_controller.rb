class PostUsersController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@posts = @user.posts
		render :index
	end
end
