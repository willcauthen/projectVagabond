class CitiesController < ApplicationController

	def index
		@cities = City.all

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
	def show
		# p params

		@city = City.find(params[:id])
		@posts = Post.where(city: @city.name)
	end

end
