class Post < ActiveRecord::Base
  belongs_to :region

  validates :name, presence: true
end
