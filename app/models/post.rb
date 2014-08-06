class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates :name, presence: true
end
