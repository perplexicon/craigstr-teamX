class Post < ActiveRecord::Base
  has_attached_file :avatar, styles: { small: "64x64", med: "100x100", large: "200x200" }

  belongs_to :category
  belongs_to :user

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :name, presence: true
end
