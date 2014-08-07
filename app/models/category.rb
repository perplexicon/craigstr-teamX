class Category < ActiveRecord::Base
  belongs_to :region
  has_many :posts

  validates :name, presence: true
end
