class Post < ActiveRecord::Base
  belongs_to :user

  has_many :mids
  has_many :categories, through: :mids
  has_many :comments
end
