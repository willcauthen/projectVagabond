class CitiesController < ApplicationController

	def index
		@current_user = current_user
		@cities = City.all
		@posts = Post.all
		render :index
	end

	def new
		redirect_to cities_path
	end
	def create
		city_params = params.require(:city).permit(:name, :lat, :lng)
		@city = City.create(city_params)
		redirect_to "/cities"
	end

	def edit 
		id = params[:id]
		@post = Post.find(id)
		redirect_to cities_path
	end

	def show
		@current_user = current_user
		@city = City.find(params[:id])
		@posts = Post.where(city: @city.name)
	end


end
