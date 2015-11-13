class PostUsersController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@posts = @user.posts
		render :index
	end
	def create
		@user = current_user
		@post = Post.find(params[:post_id])
		@user.posts.push(@post)

		redirect_to user_posts(@user)
	end
end
