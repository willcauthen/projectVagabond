class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :city
      t.string :title
      t.string :user
      t.string :content
      t.datetime :date

      t.timestamps null: false
    end
  end
end
