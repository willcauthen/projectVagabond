class CitiesController < ApplicationController

	def index
		@cities = City.all
		@posts = Post.all
		render :index
	end

	def new
		@city = City.new
		render :new
	end
	def create
		city_params = params.require(:city).permit(:name, :lat, :lng)
		@city = City.create(city_params)

		redirect_to "/cities"
	end
	def edit 
		id = params[:id]
		@post = Post.find(id)
	end
	def show

		@city = City.find(params[:id])
		@posts = Post.where(city: @city.name)
	end

end
