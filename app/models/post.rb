class Post < ActiveRecord::Base
  belongs_to :user

  has_many :mids
  has_many :categories, through: :mids
  has_many :comments


  has_attached_file :image,
                    styles: { medium: "300x300>", thumb: "100x100>" }

  do_not_validate_attachment_file_type :image
end
