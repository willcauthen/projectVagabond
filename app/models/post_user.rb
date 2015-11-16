class PostUser < ActiveRecord::Base
  belongs_to :user
   # may not need
  # belongs_to :city
 
  belongs_to :post
end
