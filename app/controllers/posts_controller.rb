class PostsController < ApplicationController
	def index
		user = current_user
		@posts = Post.all
		render :index
	end
	def new 
		@post = Post.new
		render :new
	end
	def create
		posts_params = params.require(:post).permit(:user, :current_city, :content, :title)
		@post = Post.create(posts_params)
		redirect_to "/users/:id/posts"
	end
	def edit
		id = params[:id]
		@post = Post.find(id)
		# redirect_to ""
		render :edit
	end
	def update
		id = params[:id]
		@post = Post.find(id)
		updated_info = params.require(:post).permit(:title, :content)
		@post.update_attributes(updated_info)
		redirect_to @post
	end
	def show
		id = params[:id]
		var = Post.find(id) || City.find(id) 
		@post = Post.find(var)
	end
	def destroy
		id = params[:id]
		@post = Post.find(id)
		@post.destroy
		redirect_to(cities_path)

	end
end

