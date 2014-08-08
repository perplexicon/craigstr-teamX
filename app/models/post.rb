class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates :name, presence: true
  paginates_per 5
end
