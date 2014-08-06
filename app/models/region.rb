class Region < ActiveRecord::Base
  has_many :categories
  has_many :posts

  validates :name, presence: true
end
