class AddCityImgToCities < ActiveRecord::Migration
  def change
    add_column :cities, :CityImg, :string
  end
end
