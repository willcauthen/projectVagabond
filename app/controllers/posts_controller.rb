class PostsController < ApplicationController
	def index
		@posts = Post.all
		render :index

	end
	def new 
		@post = Post.new
		render :new
	end
	def create
		posts_params = params.require(:post).permit(:user_id, :current_city, :content, :title)
		@post = Post.create(posts_params)
		redirect_to "/posts"
	end
	def edit
	end
	def show
	end
	def destory
	end
end

