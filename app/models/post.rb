class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :spams

  validates :name, presence: true
end
