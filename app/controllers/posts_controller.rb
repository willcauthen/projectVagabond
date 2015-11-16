class PostsController < ApplicationController
	def index
		@current_user = current_user
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
		id = params[:city_id]
		city = City.find(id)
		user = current_user
		posts_params = params.require(:post).permit(:content, :title)
		@post = Post.new(posts_params)
		@post.user = user.id
		@post.city = city.name
		@post.save
		redirect_to city_posts_path
	end
	def edit
		@current_user = current_user
		id = params[:id]
		@post = Post.find(id)
		if @current_user.id.to_s == @post.user
			render :edit
		else
			redirect_to cities_path
		end
	end
	def update
		id = params[:id]
		@post = Post.find(id)
		updated_info = params.require(:post).permit(:title, :content)
		@post.update_attributes(updated_info)
		redirect_to city_post_path
	end
	def show
		@current_user = current_user
		id = params[:id] 
		@post = Post.find(id)
		@city = City.find_by(name:@post.city)

	end
	def destroy
		id = params[:id]
		@post = Post.find(id)
		@post.destroy
		redirect_to(cities_path)

	end
end

