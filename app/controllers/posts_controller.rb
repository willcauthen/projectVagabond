class PostsController < ApplicationController
	def index
		@posts = Post.all
		render :index
	end
	def new 
		@posts = Post.new
		render :new
	end
	def create
		posts_params = params.require(:post).permit(:user_name, :current_city, :content)
		@post = Post.create(post_params)
		redirect_to "/posts"
	end
	def edit
	end
	def show
	end
	def destory
	end
end
