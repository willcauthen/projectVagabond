class CityUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :city
end
