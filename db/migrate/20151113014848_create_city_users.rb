class CreateCityUsers < ActiveRecord::Migration
  def change
    create_table :city_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
      t.reference :city

      t.timestamps null: false
    end
  end
end
