class PostsController < ApplicationController
	def index
		id = params[:id]
		@city = City.find_by(id)
		@posts = Post.where(city:@city.name)

		render :index
	end
	def new 
		@post = Post.new
		render :new
	end
	def create
		id = params[:user_id]
		posts_params = params.require(:post).permit(:city, :content, :title)
		@post = Post.new(posts_params)
		@post.user = id
		@post.save
		redirect_to user_posts_path
	end
	def edit
		id = params[:id]
		@post = Post.find(id)
		render :edit
	end
	def update
		id = params[:id]
		@post = Post.find(id)
		updated_info = params.require(:post).permit(:title, :content)
		@post.update_attributes(updated_info)
		redirect_to city_post_path
	end
	def show
		id = params[:id] 
		@post = Post.find(id)
		@city = City.find_by(name:@post.city)
	end
	def destory
		id = params[:id]
		@post = Post.find(id)
		@post.destroy
		redirect_to cities_path
	end
end

