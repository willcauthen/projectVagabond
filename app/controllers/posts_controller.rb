class PostsController < ApplicationController
	def index
		user = current_user
		@posts = Post.where(user:user.id)
		render :index

	end
	def new 
		@post = Post.new
		render :new
	end
	def create
		posts_params = params.require(:post).permit(:user, :current_city, :content, :title)
		@post = Post.create(posts_params)
		redirect_to "/posts"
	end
	def edit
	end
	def show
		id = params[:id]
		user = User.find_by(id)
		@post = Post.find(user)
	end
	def destory
	end
end

