class Category < ActiveRecord::Base
  has_many :mids
  has_many :posts, through: :mids

end
