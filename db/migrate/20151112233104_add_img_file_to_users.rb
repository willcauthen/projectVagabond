class AddImgFileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Img_File, :string, :default => "defaultuserpic.png"
  end
end
