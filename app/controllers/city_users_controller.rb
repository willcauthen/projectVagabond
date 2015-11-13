class CityUsersController < ApplicationController
	def index
		# @user = User.find(params[:user_id])
		@user = current_user
		
		# @cities = @user.cities
		@city = City.find(params[:city_id])
		# current_user
		@user.cities.push(@city)

		redirect_to user_cities(@user)
		# render :index
	
	end

end
